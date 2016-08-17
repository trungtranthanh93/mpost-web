'use strict';

var app = angular.module('mpost-app', [
    'ngCookies',
    'ngResource',

    'ui.router',
    'ui.bootstrap',

    'oc.lazyLoad',

    'mpost.controllers',
    'mpost.directives',
    'mpost.factory',
    'mpost.services',

    // Added in v1.3
    'FBAngular'
]);

app.run(function () {
    // Page Loading Overlay
    public_vars.$pageLoadingOverlay = jQuery('.page-loading-overlay');

    jQuery(window).load(function () {
        public_vars.$pageLoadingOverlay.addClass('loaded');
    })
});

app.config(function ($stateProvider, $urlRouterProvider, $ocLazyLoadProvider, ASSETS) {

    $urlRouterProvider.otherwise('/app/business-summary');

    $stateProvider.
        state('app', {
            abstract: true,
            url: '/app',
            templateUrl: appHelper.templatePath('layout/app-body'),
            controller: function ($rootScope) {
                $rootScope.isLoginPage = false;
                $rootScope.isLightLoginPage = false;
                $rootScope.isLockscreenPage = false;
                $rootScope.isMainPage = true;
            }
        }).

        // business
        state('app.business-summary', {
            url: '/business-summary',
            templateUrl: appHelper.templatePath('dashboards/variant-4'),
            resolve: {
                resources: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.icons.meteocons,
                        ASSETS.maps.vectorMaps
                    ]);
                }
            }
        }).

        // tables
        state('app.tables-basic', {
            url: '/tables-basic',
            templateUrl: appHelper.templatePath('tables/basic')
        }).
        state('app.tables-responsive', {
            url: '/tables-responsive',
            templateUrl: appHelper.templatePath('tables/responsive'),
            resolve: {
                deps: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.tables.rwd
                    ]);
                }
            }
        }).
        state('app.tables-datatables', {
            url: '/tables-datatables',
            templateUrl: appHelper.templatePath('tables/datatables'),
            resolve: {
                deps: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.tables.datatables
                    ]);
                }
            }
        }).

        // admin
        state('app.admin-create-company', {
            url: '/admin-create-company',
            templateUrl: appHelper.templatePath('admin/create-company'),
            resolve: {
                resources: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.forms.jQueryValidate,
                        ASSETS.extra.toastr
                    ]);
                },
                jqui: function ($ocLazyLoad) {
                    return $ocLazyLoad.load({
                        files: ASSETS.core.jQueryUI
                    });
                },
                select2: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.forms.select2
                    ]);
                },
                selectboxit: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.forms.selectboxit
                    ]);
                },
                typeahead: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.forms.typeahead
                    ]);
                }
            }
        }).
        state('app.admin-create-shop', {
            url: '/admin-create-shop',
            templateUrl: appHelper.templatePath('admin/create-shop'),
            resolve: {
                resources: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.forms.jQueryValidate,
                        ASSETS.extra.toastr
                    ]);
                },
                jqui: function ($ocLazyLoad) {
                    return $ocLazyLoad.load({
                        files: ASSETS.core.jQueryUI
                    });
                },
                typeahead: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.forms.typeahead
                    ]);
                }
            }
        }).
        state('app.admin-create-terminal', {
            url: '/admin-create-terminal',
            templateUrl: appHelper.templatePath('admin/create-terminal'),
            resolve: {
                resources: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.forms.jQueryValidate,
                        ASSETS.extra.toastr
                    ]);
                },
                jqui: function ($ocLazyLoad) {
                    return $ocLazyLoad.load({
                        files: ASSETS.core.jQueryUI
                    });
                },
                typeahead: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.forms.typeahead
                    ]);
                }
            }
        }).
        state('app.admin-create-terminal-stock', {
            url: '/admin-create-terminal-stock',
            templateUrl: appHelper.templatePath('admin/create-terminal-stock'),
            resolve: {
                resources: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.forms.jQueryValidate,
                        ASSETS.forms.inputmask,
                        ASSETS.forms.selectboxit,
                        ASSETS.extra.toastr
                    ]);
                },
                jqui: function ($ocLazyLoad) {
                    return $ocLazyLoad.load({
                        files: ASSETS.core.jQueryUI
                    });
                },
                typeahead: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.forms.typeahead
                    ]);
                }
            }
        }).
        state('app.admin-create-contact', {
            url: '/admin-create-contact',
            templateUrl: appHelper.templatePath('admin/create-contact'),
            resolve: {
                resources: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.forms.jQueryValidate,
                        ASSETS.extra.toastr
                    ]);
                },
                jqui: function ($ocLazyLoad) {
                    return $ocLazyLoad.load({
                        files: ASSETS.core.jQueryUI
                    });
                },
                typeahead: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.forms.typeahead
                    ]);
                }
            }
        }).
        state('app.admin-create-shop-manager', {
            url: '/admin-create-shop-manager',
            templateUrl: appHelper.templatePath('admin/create-shop-manager'),
            resolve: {
                resources: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.forms.jQueryValidate,
                        ASSETS.forms.inputmask,
                        ASSETS.forms.selectboxit,
                        ASSETS.extra.toastr
                    ]);
                },
                jqui: function ($ocLazyLoad) {
                    return $ocLazyLoad.load({
                        files: ASSETS.core.jQueryUI
                    });
                },
                typeahead: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.forms.typeahead
                    ]);
                }
            }
        }).
        state('app.admin-create-delivery-stt', {
            url: '/admin-create-delivery-stt',
            templateUrl: appHelper.templatePath('admin/create-delivery-stt'),
            resolve: {
                resources: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.forms.jQueryValidate,
                        ASSETS.extra.toastr
                    ]);
                },
                jqui: function ($ocLazyLoad) {
                    return $ocLazyLoad.load({
                        files: ASSETS.core.jQueryUI
                    });
                },
                typeahead: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.forms.typeahead
                    ]);
                }
            }
        }).
        state('app.admin-close-convention', {
            url: '/admin-close-convention',
            templateUrl: appHelper.templatePath('admin/close-convention'),
            resolve: {
                resources: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.forms.jQueryValidate,
                        ASSETS.extra.toastr
                    ]);
                },
                jqui: function ($ocLazyLoad) {
                    return $ocLazyLoad.load({
                        files: ASSETS.core.jQueryUI
                    });
                },
                typeahead: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.forms.typeahead
                    ]);
                }
            }
        }).
        state('app.admin-update-reseller', {
            url: '/admin-update-reseller',
            templateUrl: appHelper.templatePath('admin/update-reseller'),
            resolve: {
                resources: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.forms.jQueryValidate,
                        ASSETS.extra.toastr
                    ]);
                },
                jqui: function ($ocLazyLoad) {
                    return $ocLazyLoad.load({
                        files: ASSETS.core.jQueryUI
                    });
                },
                typeahead: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.forms.typeahead
                    ]);
                }
            }
        }).
        state('app.admin-create-gab', {
            url: '/admin-create-gab',
            templateUrl: appHelper.templatePath('admin/create-gab'),
            resolve: {
                resources: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.forms.jQueryValidate,
                        ASSETS.extra.toastr
                    ]);
                },
                jqui: function ($ocLazyLoad) {
                    return $ocLazyLoad.load({
                        files: ASSETS.core.jQueryUI
                    });
                },
                typeahead: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.forms.typeahead
                    ]);
                }
            }
        }).

        // forms
        state('app.forms-native', {
            url: '/forms-native',
            templateUrl: appHelper.templatePath('forms/native-elements')
        }).
        state('app.forms-advanced', {
            url: '/forms-advanced',
            templateUrl: appHelper.templatePath('forms/advanced-plugins'),
            resolve: {
                jqui: function ($ocLazyLoad) {
                    return $ocLazyLoad.load({
                        files: ASSETS.core.jQueryUI
                    });
                },
                select2: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.forms.select2
                    ]);
                },
                selectboxit: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.forms.selectboxit
                    ]);
                },
                tagsinput: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.forms.tagsinput
                    ]);
                },
                multiSelect: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.forms.multiSelect
                    ]);
                },
                typeahead: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.forms.typeahead
                    ]);
                },
                datepicker: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.forms.datepicker
                    ]);
                },
                timepicker: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.forms.timepicker
                    ]);
                },
                daterangepicker: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.core.moment,
                        ASSETS.forms.daterangepicker
                    ]);
                },
                colorpicker: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.forms.colorpicker
                    ]);
                }
            }
        }).
        state('app.forms-wizard', {
            url: '/forms-wizard',
            templateUrl: appHelper.templatePath('forms/form-wizard'),
            resolve: {
                fwDependencies: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.core.bootstrap,
                        ASSETS.core.jQueryUI,
                        ASSETS.forms.jQueryValidate,
                        ASSETS.forms.inputmask,
                        ASSETS.forms.multiSelect,
                        ASSETS.forms.datepicker,
                        ASSETS.forms.selectboxit,
                        ASSETS.forms.formWizard
                    ]);
                },
                formWizard: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([]);
                }
            }
        }).
        state('app.forms-validation', {
            url: '/forms-validation',
            templateUrl: appHelper.templatePath('forms/form-validation'),
            resolve: {
                jQueryValidate: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.forms.jQueryValidate
                    ]);
                }
            }
        }).
        state('app.forms-input-masks', {
            url: '/forms-input-masks',
            templateUrl: appHelper.templatePath('forms/input-masks'),
            resolve: {
                inputmask: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.forms.inputmask
                    ]);
                }
            }
        }).
        state('app.forms-file-upload', {
            url: '/forms-file-upload',
            templateUrl: appHelper.templatePath('forms/file-upload'),
            resolve: {
                dropzone: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.forms.dropzone
                    ]);
                }
            }
        }).
        state('app.forms-wysiwyg', {
            url: '/forms-wysiwyg',
            templateUrl: appHelper.templatePath('forms/wysiwyg'),
            resolve: {
                bootstrap: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.core.bootstrap
                    ]);
                },
                bootstrapWysihtml5: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.forms.bootstrapWysihtml5
                    ]);
                },
                uikit: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.uikit.base,
                        ASSETS.uikit.codemirror,
                        ASSETS.uikit.marked
                    ]);
                },
                uikitHtmlEditor: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.uikit.htmleditor
                    ]);
                }
            }
        }).
        state('app.forms-sliders', {
            url: '/forms-sliders',
            templateUrl: appHelper.templatePath('forms/sliders'),
            resolve: {
                sliders: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.core.jQueryUI
                    ]);
                }
            }
        }).
        state('app.forms-icheck', {
            url: '/forms-icheck',
            templateUrl: appHelper.templatePath('forms/icheck'),
            resolve: {
                iCheck: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.forms.icheck
                    ]);
                }
            }
        }).
        state('app.extra-scrollable', {
            url: '/extra-scrollable',
            templateUrl: appHelper.templatePath('extra/scrollable')
        }).
        state('app.extra-blank-page', {
            url: '/extra-blank-page',
            templateUrl: appHelper.templatePath('extra/blank-page')
        }).
        state('app.extra-maps-google', {
            url: '/extra-maps-google',
            templateUrl: appHelper.templatePath('extra/maps-google'),
            resolve: {
                resources: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.core.googleMapsLoader
                    ]);
                }
            }
        }).
        state('app.extra-maps-advanced', {
            url: '/extra-maps-advanced',
            templateUrl: appHelper.templatePath('extra/maps-advanced'),
            resolve: {
                resources: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.core.googleMapsLoader
                    ]);
                }
            }
        }).
        state('app.extra-maps-vector', {
            url: '/extra-maps-vector',
            templateUrl: appHelper.templatePath('extra/maps-vector'),
            resolve: {
                resources: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.maps.vectorMaps
                    ]);
                }
            }
        }).

        // Members
        state('app.extra-members-list', {
            url: '/extra-members-list',
            templateUrl: appHelper.templatePath('extra/members-list')
        }).
        state('app.extra-members-add', {
            url: '/extra-members-add',
            templateUrl: appHelper.templatePath('extra/members-add'),
            resolve: {
                datepicker: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.forms.datepicker,
                        ASSETS.forms.multiSelect,
                        ASSETS.forms.select2
                    ]);
                }
                //sssss
            }
        }).

        // Charts
        state('app.charts-variants', {
            url: '/charts-variants',
            templateUrl: appHelper.templatePath('charts/bars'),
            resolve: {
                resources: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.charts.dxGlobalize
                    ]);
                },
                dxCharts: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.charts.dxCharts
                    ]);
                }
            }
        }).
        state('app.charts-range-selector', {
            url: '/charts-range-selector',
            templateUrl: appHelper.templatePath('charts/range'),
            resolve: {
                resources: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.charts.dxGlobalize
                    ]);
                },
                dxCharts: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.charts.dxCharts
                    ]);
                }
            }
        }).
        state('app.charts-sparklines', {
            url: '/charts-sparklines',
            templateUrl: appHelper.templatePath('charts/sparklines'),
            resolve: {
                resources: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.charts.dxGlobalize
                    ]);
                },
                dxCharts: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.charts.dxCharts
                    ]);
                }
            }
        }).
        state('app.charts-gauges', {
            url: '/charts-gauges',
            templateUrl: appHelper.templatePath('charts/gauges'),
            resolve: {
                resources: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.charts.dxGlobalize
                    ]);
                },
                dxCharts: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.charts.dxCharts
                    ]);
                }
            }
        }).
        state('app.charts-bar-gauges', {
            url: '/charts-bar-gauges',
            templateUrl: appHelper.templatePath('charts/bar-gauges'),
            resolve: {
                resources: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.charts.dxGlobalize
                    ]);
                },
                dxCharts: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.charts.dxCharts
                    ]);
                }
            }
        }).
        state('app.charts-linear-gauges', {
            url: '/charts-linear-gauges',
            templateUrl: appHelper.templatePath('charts/gauges-linear'),
            resolve: {
                resources: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.charts.dxGlobalize
                    ]);
                },
                dxCharts: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.charts.dxCharts
                    ]);
                }
            }
        }).
        state('app.charts-map-charts', {
            url: '/charts-map-charts',
            templateUrl: appHelper.templatePath('charts/map'),
            resolve: {
                resources: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.charts.dxGlobalize
                    ]);
                },
                dxCharts: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.charts.dxCharts,
                        ASSETS.charts.dxVMWorld
                    ]);
                }
            }
        }).

        // Logins and Lockscreen
        state('login', {
            url: '/login',
            templateUrl: appHelper.templatePath('login'),
            controller: 'LoginCtrl',
            resolve: {
                resources: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.forms.jQueryValidate,
                        ASSETS.extra.toastr
                    ]);
                }
            }
        }).
        state('login-light', {
            url: '/login-light',
            templateUrl: appHelper.templatePath('login-light'),
            controller: 'LoginLightCtrl',
            resolve: {
                resources: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.forms.jQueryValidate
                    ]);
                }
            }
        }).
        state('lockscreen', {
            url: '/lockscreen',
            templateUrl: appHelper.templatePath('lockscreen'),
            controller: 'LockscreenCtrl',
            resolve: {
                resources: function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        ASSETS.forms.jQueryValidate,
                        ASSETS.extra.toastr
                    ]);
                }
            }
        });
});


app.constant('ASSETS', {
    'core': {
        'bootstrap': appHelper.assetPath('js/bootstrap.min.js'), // Some plugins which do not support angular needs this

        'jQueryUI': [
            appHelper.assetPath('js/jquery-ui/jquery-ui.min.js'),
            appHelper.assetPath('js/jquery-ui/jquery-ui.structure.min.css')
        ],

        'moment': appHelper.assetPath('js/moment.min.js'),

        'googleMapsLoader': appHelper.assetPath('app/js/angular-google-maps/load-google-maps.js')
    },

    'charts': {

        'dxGlobalize': appHelper.assetPath('js/devexpress-web-14.1/js/globalize.min.js'),
        'dxCharts': appHelper.assetPath('js/devexpress-web-14.1/js/dx.chartjs.js'),
        'dxVMWorld': appHelper.assetPath('js/devexpress-web-14.1/js/vectormap-data/world.js')
    },

    'xenonLib': {
        notes: appHelper.assetPath('js/xenon-notes.js')
    },

    'maps': {

        'vectorMaps': [
            appHelper.assetPath('js/jvectormap/jquery-jvectormap-1.2.2.min.js'),
            appHelper.assetPath('js/jvectormap/regions/jquery-jvectormap-world-mill-en.js'),
            appHelper.assetPath('js/jvectormap/regions/jquery-jvectormap-it-mill-en.js')
        ]
    },

    'icons': {
        'meteocons': appHelper.assetPath('css/fonts/meteocons/css/meteocons.css'),
        'elusive': appHelper.assetPath('css/fonts/elusive/css/elusive.css')
    },

    'tables': {
        'rwd': appHelper.assetPath('js/rwd-table/js/rwd-table.min.js'),

        'datatables': [
            appHelper.assetPath('js/datatables/dataTables.bootstrap.css'),
            appHelper.assetPath('js/datatables/datatables-angular.js')
        ]
    },

    'forms': {

        'select2': [
            appHelper.assetPath('js/select2/select2.css'),
            appHelper.assetPath('js/select2/select2-bootstrap.css'),

            appHelper.assetPath('js/select2/select2.min.js')
        ],

        'daterangepicker': [
            appHelper.assetPath('js/daterangepicker/daterangepicker-bs3.css'),
            appHelper.assetPath('js/daterangepicker/daterangepicker.js')
        ],

        'colorpicker': appHelper.assetPath('js/colorpicker/bootstrap-colorpicker.min.js'),

        'selectboxit': appHelper.assetPath('js/selectboxit/jquery.selectBoxIt.js'),

        'tagsinput': appHelper.assetPath('js/tagsinput/bootstrap-tagsinput.min.js'),

        'datepicker': appHelper.assetPath('js/datepicker/bootstrap-datepicker.js'),

        'timepicker': appHelper.assetPath('js/timepicker/bootstrap-timepicker.min.js'),

        'inputmask': appHelper.assetPath('js/inputmask/jquery.inputmask.bundle.js'),

        'formWizard': appHelper.assetPath('js/formwizard/jquery.bootstrap.wizard.min.js'),

        'jQueryValidate': appHelper.assetPath('js/jquery-validate/jquery.validate.min.js'),

        'dropzone': [
            appHelper.assetPath('js/dropzone/css/dropzone.css'),
            appHelper.assetPath('js/dropzone/dropzone.min.js')
        ],

        'typeahead': [
            appHelper.assetPath('js/typeahead.bundle.js'),
            appHelper.assetPath('js/handlebars.min.js')
        ],

        'multiSelect': [
            appHelper.assetPath('js/multiselect/css/multi-select.css'),
            appHelper.assetPath('js/multiselect/js/jquery.multi-select.js')
        ],

        'icheck': [
            appHelper.assetPath('js/icheck/skins/all.css'),
            appHelper.assetPath('js/icheck/icheck.min.js')
        ],

        'bootstrapWysihtml5': [
            appHelper.assetPath('js/wysihtml5/src/bootstrap-wysihtml5.css'),
            appHelper.assetPath('js/wysihtml5/wysihtml5-angular.js')
        ]
    },

    'uikit': {
        'base': [
            appHelper.assetPath('js/uikit/uikit.css'),
            appHelper.assetPath('js/uikit/css/addons/uikit.almost-flat.addons.min.css'),
            appHelper.assetPath('js/uikit/js/uikit.min.js')
        ],

        'codemirror': [
            appHelper.assetPath('js/uikit/vendor/codemirror/codemirror.js'),
            appHelper.assetPath('js/uikit/vendor/codemirror/codemirror.css')
        ],

        'marked': appHelper.assetPath('js/uikit/vendor/marked.js'),
        'htmleditor': appHelper.assetPath('js/uikit/js/addons/htmleditor.min.js'),
        'nestable': appHelper.assetPath('js/uikit/js/addons/nestable.min.js')
    },

    'extra': {
        'tocify': appHelper.assetPath('js/tocify/jquery.tocify.min.js'),

        'toastr': appHelper.assetPath('js/toastr/toastr.min.js'),

        'fullCalendar': [
            appHelper.assetPath('js/fullcalendar/fullcalendar.min.css'),
            appHelper.assetPath('js/fullcalendar/fullcalendar.min.js')
        ],

        'cropper': [
            appHelper.assetPath('js/cropper/cropper.min.js'),
            appHelper.assetPath('js/cropper/cropper.min.css')
        ]
    }
});