'use strict';

angular.module('mpost.services', []).
    service('$menuItems', function () {
        this.menuItems = [];

        var $menuItemsRef = this;

        var menuItemObj = {
            parent: null,

            title: '',
            link: '', // starting with "./" will refer to parent link concatenation
            state: '', // will be generated from link automatically where "/" (forward slashes) are replaced with "."
            icon: '',

            isActive: false,
            label: null,

            menuItems: [],

            setLabel: function (label, color, hideWhenCollapsed) {
                if (typeof hideWhenCollapsed == 'undefined')
                    hideWhenCollapsed = true;

                this.label = {
                    text: label,
                    classname: color,
                    collapsedHide: hideWhenCollapsed
                };

                return this;
            },

            addItem: function (title, link, icon) {
                var parent = this,
                    item = angular.extend(angular.copy(menuItemObj), {
                        parent: parent,

                        title: title,
                        link: link,
                        icon: icon
                    });

                if (item.link) {
                    if (item.link.match(/^\./))
                        item.link = parent.link + item.link.substring(1, link.length);

                    if (item.link.match(/^-/))
                        item.link = parent.link + '-' + item.link.substring(2, link.length);

                    item.state = $menuItemsRef.toStatePath(item.link);
                }

                this.menuItems.push(item);

                return item;
            }
        };

        this.addItem = function (title, link, icon) {
            var item = angular.extend(angular.copy(menuItemObj), {
                title: title,
                link: link,
                state: this.toStatePath(link),
                icon: icon
            });

            this.menuItems.push(item);

            return item;
        };

        this.getAll = function () {
            return this.menuItems;
        };

        this.prepareHorizontalMenu = function () {
            var admin = this.addItem('Admin', '/app/admin', 'fa fa-pie-chart');
            var business = this.addItem('Business', '/app/business', 'linecons-cog');
            var finance = this.addItem('Finance', '/app/business', 'fa fa-usd');
            var stock = this.addItem('Stock', '/app/business', 'fa fa-indent');
            var formDemo = this.addItem('Form Demo', '/app/forms', 'fa fa-yelp');

            // Sub-items of business
            business.addItem('Summary', '-/variant-4');
            business.addItem('Transactions', '/app/tables-datatables');

            // Sub items of Admin
            admin.addItem('Create Company', '-/create-company');
            admin.addItem('Create Shop', '-/create-shop');
            admin.addItem('Create Terminal', '-/create-terminal');
            admin.addItem('Create Terminal Stock', '-/create-terminal-stock');
            admin.addItem('Create Contact', '-/create-contact');
            admin.addItem('Create Shop Manager', '-/create-shop-manager');
            admin.addItem('Create Delivery Stt', '-/create-delivery-stt');
            admin.addItem('Close Convention', '-/close-convention');
            admin.addItem('Update Reseller', '-/update-reseller');
            admin.addItem('Create GAB', '-/create-gab');

            // Sub items of Form Demo
            formDemo.addItem('Form Demo - Native', '-/native');
            formDemo.addItem('Form Demo - Advanced', '-/advanced');
            formDemo.addItem('Form Demo - Wizard', '-/wizard');
            formDemo.addItem('Form Demo - Input masks', '-/input-masks');
            formDemo.addItem('Form Demo - Validation', '-/validation');
            formDemo.addItem('Form Demo - File Upload', '-/file-upload');
            formDemo.addItem('Form Demo - Editors', '-/wysiwyg');
            formDemo.addItem('Form Demo - Sliders', '-/sliders');

            // Sub items of finance
            finance.addItem('Insert Opreration', '-/native');
            finance.addItem('View Operation', '-/advanced');

            // Sub items of Stock
            stock.addItem('Stock Feed', '-/native');
            stock.addItem('View Stock', '-/advanced');

            return this;
        };

        this.instantiate = function () {
            return angular.copy(this);
        };

        this.toStatePath = function (path) {
            return path.replace(/\//g, '.').replace(/^\./, '');
        };

        this.setActive = function (path) {
            this.iterateCheck(this.menuItems, this.toStatePath(path));
        };

        this.setActiveParent = function (item) {
            item.isActive = true;
            item.isOpen = true;

            if (item.parent)
                this.setActiveParent(item.parent);
        };

        this.iterateCheck = function (menuItems, currentState) {
            angular.forEach(menuItems, function (item) {
                if (item.state == currentState) {
                    item.isActive = true;

                    if (item.parent != null)
                        $menuItemsRef.setActiveParent(item.parent);
                }
                else {
                    item.isActive = false;
                    item.isOpen = false;

                    if (item.menuItems.length) {
                        $menuItemsRef.iterateCheck(item.menuItems, currentState);
                    }
                }
            });
        }
    });