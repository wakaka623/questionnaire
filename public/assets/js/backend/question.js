define(['jquery', 'bootstrap', 'backend', 'table', 'form'], function ($, undefined, Backend, Table, Form) {

    var Controller = {
        index: function () {
            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    index_url: 'question/index' + location.search,
                    add_url: 'question/add',
                    edit_url: 'question/edit',
                    del_url: 'question/del',
                    multi_url: 'question/multi',
                    table: 'question',
                }
            });

            var table = $("#table");

            // 初始化表格
            table.bootstrapTable({
                url: $.fn.bootstrapTable.defaults.extend.index_url,
                pk: 'id',
                sortName: 'id',
                columns: [
                    [
                        {checkbox: true},
                        {field: 'id', title: __('Id')},
                        {field: 'name', title: __('Name')},
                        {field: 'tel', title: __('Tel')},
                        {field: 'one', title: __('One')},
                        {field: 'two', title: __('Two')},
                        {field: 'three', title: __('Three')},
                        {field: 'four', title: __('Four')},
                        {field: 'five', title: __('Five')},
                        {field: 'six', title: __('Six')},
                        {field: 'seven', title: __('Seven')},
                        {field: 'eight', title: __('Eight')},
                        {field: 'nine', title: __('Nine')},
                        {field: 'ten', title: __('Ten')},
                        {field: 'eleven', title: __('Eleven')},
                        {field: 'twelve', title: __('Twelve')},
                        {field: 'thirteen', title: __('Thirteen')},
                        {field: 'fourteen', title: __('Fourteen')},
                        {field: 'fifteen', title: __('Fifteen')},
                        {field: 'sixteen', title: __('Sixteen')},
                        {field: 'seventeen', title: __('Seventeen')},
                        {field: 'eighteen', title: __('Eighteen')},
                        {field: 'nineteen', title: __('Nineteen')},
                        {field: 'twenty', title: __('Twenty')},
                        {field: 'twenty_one', title: __('Twenty_one')},
                        {field: 'twenty_two', title: __('Twenty_two')},
                        {field: 'twenty_three', title: __('Twenty_three')},
                        {field: 'images', title: __('Images'), events: Table.api.events.image, formatter: Table.api.formatter.images},
                        {field: 'add_time', title: __('Add_time')},
                        {field: 'operate', title: __('Operate'), table: table, events: Table.api.events.operate, formatter: Table.api.formatter.operate}
                    ]
                ]
            });

            // 为表格绑定事件
            Table.api.bindevent(table);
        },
        add: function () {
            Controller.api.bindevent();
        },
        edit: function () {
            Controller.api.bindevent();
        },
        api: {
            bindevent: function () {
                Form.api.bindevent($("form[role=form]"));
            }
        }
    };
    return Controller;
});