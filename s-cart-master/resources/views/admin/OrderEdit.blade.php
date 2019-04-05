<style>
    .table-bordered>thead>tr>th, .table-bordered>tbody>tr>th, .table-bordered>tfoot>tr>th, .table-bordered>thead>tr>td, .table-bordered>tbody>tr>td, .table-bordered>tfoot>tr>td,.table>thead:first-child>tr:first-child>th {
    border: 1px solid #d0bcbc;
}

</style>
<div class="container box">
    <div class="box-header with-border">
        <h3 class="box-title"><span class="glyphicon glyphicon-list-alt"></span> {{ trans('language.order.order_detail') }} #{{ $order->id }}</h3>
        <div class="box-tools">
            <div class="btn-group pull-right" style="margin-right: 10px">
                <a href="{{ URL::previous() }}" class="btn btn-sm btn-default"><i class="fa fa-list"></i>&nbsp;{{ trans('admin.list') }}</a>
            </div>
            <div class="btn-group pull-right" style="margin-right: 10px">
                <a class="btn btn-sm btn-default form-history-back"><i class="fa fa-arrow-left"></i>&nbsp;{{ trans('admin.back') }}</a>
            </div>
        </div>
    </div>
    <div>
       <table class="table box table-bordered">
        <tr>
          <th>{{ trans('language.order.shipping_name') }}:</th><td><a href="#" class="updateInfoRequired" data-name="toname" data-type="text" data-pk="{{ $order->id }}" data-url="{{ route("order_update") }}" data-title="{{ trans('language.order.shipping_name') }}" >{{ $order->toname }}</a></td>
        </tr>
        <tr>
          <th>{{ trans('language.order.shipping_phone') }}:</th><td><a href="#" class="updateInfoRequired" data-name="phone" data-type="text" data-pk="{{ $order->id }}" data-url="{{ route("order_update") }}" data-title="{{ trans('language.order.shipping_phone') }}" >{{ $order->phone }}</a></td>
        </tr>
        <tr>
          <th>Email:</th><td>{{ empty($order->email)?'N/A':$order->email}}</td>
        </tr>
        <tr>
          <th>{{ trans('language.order.shipping_address1') }}:</th><td><a href="#" class="updateInfoRequired" data-name="address1" data-type="text" data-pk="{{ $order->id }}" data-url="{{ route("order_update") }}" data-title="Địa chỉ 1" >{{ $order->address1 }}</a></td>
        </tr>
                <tr>
          <th>{{ trans('language.order.shipping_address2') }}:</th><td><a href="#" class="updateInfoRequired" data-name="address2" data-type="text" data-pk="{{ $order->id }}" data-url="{{ route("order_update") }}" data-title="Địa chỉ 2" >{{ $order->address2 }}</a></td>
        </tr>

      </table>
    </div>
  <table class="table box  table-bordered table-responsive">
    <thead>
      <tr>
        <th style="width: 50px;">ID</th>
        <th style="width: 100px;">{{ trans('language.product.sku') }}</th>
        <th>{{ trans('language.product.name') }}</th>
        <th>{{ trans('language.product.price') }}</th>
        <th style="width: 100px;">{{ trans('language.product.quantity') }}</th>
        <th>{{ trans('language.product.total_price') }}</th>
        <th>{{ trans('language.product.attribute') }}</th>
        <th>{{ trans('admin.action') }}</th>
      </tr>
    </thead>
    <tbody>

        @foreach ($order->details as $item)
              <tr>
                <td><span class="item_{{ $item->id }}_id">{{ $item->id }}</span></td>
                <td><span class="item_{{ $item->id }}_sku">{{ $item->sku }}</span></td>
                <td><span class="item_{{ $item->id }}_name">{{ $item->name }}</span></td>
                <td align="right"><span class="item_{{ $item->id }}_price">{{ number_format($item->price) }}</span></td>
                <td align="right">x <span class="item_{{ $item->id }}_qty">{{ number_format($item->qty) }}</span></td>
                <td align="right"><span  class="item_{{ $item->id }}_total_price">{{ number_format($item->total_price) }}</span></td>
                <td><span  class="item_{{ $item->id }}_attr">{{ $item->option }}</span></td>
                <td>
                    <button onclick="dataEdit({{ $item->id }});" class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#editItem" data-placement="top" rel="tooltip" data-original-title="" title="Edit item"><span class="glyphicon glyphicon-pencil"></span>{{ trans('admin.edit') }}</button>
                     &nbsp;
                    <button  onclick="dataRemove({{ $item->id }});" class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#removeItem" data-placement="top" rel="tooltip" data-original-title="" title="Remove item"><span class="glyphicon glyphicon-remove"></span>{{ trans('admin.remove') }}</button>
                </td>
              </tr>
        @endforeach

      <tr>
        <td  colspan="8">  <button  type="button" class="btn btn-sm btn-success" data-title="Add new" data-toggle="modal" data-target="#addItem" data-placement="top" rel="tooltip" data-original-title="" title="Add new item"><i class="fa fa-plus"></i> {{ trans('language.product.add_product') }}</button></td>
      </tr>
<tr>
</tr>
    </tbody>
  </table>
@php
    if($order->balance == 0){
        $style = 'style="color:#0e9e33;font-weight:bold;"';
    }else
        if($order->balance < 0){
        $style = 'style="color:#ff2f00;font-weight:bold;"';
    }else{
        $style = 'style="font-weight:bold;"';
    }
@endphp
  <div class="row">
    <div class="col-md-6">
                <table  class="table table-bordered">
                    <tr><th>{{ trans('language.order.order_status') }}:</th><td><a href="#" class="updateStatus" data-name="status" data-type="select" data-source ="{{ json_encode($statusOrder2) }}"  data-pk="{{ $order->id }}" data-value="{{ $order->status }}" data-url="{{ route("order_update") }}" data-title="{{ trans('language.order.order_status') }}">{{ $statusOrder[$order->status] }}</a></td></tr>
                    <tr><th>{{ trans('language.order.order_shipping_status') }}:</th><td><a href="#" class="updateStatus" data-name="shipping_status" data-type="select" data-source ="{{ json_encode($statusShipping2) }}"  data-pk="{{ $order->id }}" data-value="{{ $order->shipping_status }}" data-url="{{ route("order_update") }}" data-title="{{ trans('language.order.order_shipping_status') }}">{{ $statusShipping[$order->shipping_status] }}</a></td></tr>
                    <tr><th>{{ trans('language.order.order_note') }}:</th>
                      <td>
                        <a href="#" class="updateInfo" data-name="comment" data-type="textarea" data-pk="{{ $order->id }}" data-url="{{ route("order_update") }}" data-title="" >{{ $order->comment }}
                        </a>
                    </td>
                    </tr>
                  </table>
                <style type="text/css">
                  .history{
                    max-height: 50px;
                    max-width: 300px;
                    overflow-y: auto;
                  }
                </style>

    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
        <div class="panel panel-default">
            <div class="panel-heading" role="tab" id="headingOne">
                <h4 class="panel-title">
                        {{ trans('language.order.order_history') }}
                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                        <i class="more-less glyphicon glyphicon-plus"></i>
                        </a>
                </h4>
            </div>
            <div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
                    @if (count($order->history))
                      <table  class="table table-bordered" id="history">
                        <tr>
                          <td>{{ trans('language.order.history_staff') }}</td>
                          <td>{{ trans('language.order.history_content') }}</td>
                          <td>{{ trans('language.order.history_time') }}</td>
                        </tr>

                      @foreach ($order->history as $history)
                        <tr>
                          <td>{{ $history['admin_id'] }}</td>
                          <td><div class="history">{!! $history['content'] !!}</div></td>
                          <td>{{ $history['add_date'] }}</td>
                        </tr>
                      @endforeach
                      </table>
                    @endif
            </div>
        </div>
    </div><!-- panel-group -->

    </div>

    <div class="col-md-6">
          <table   class="table table-bordered">
@foreach ($dataTotal as $element)
  @if ($element['code'] =='subtotal')
    <tr><td>{!! $element['title'] !!}:</td><td align="right" class="data-{{ $element['code'] }}">{{ number_format($element['value']) }}</td></tr>
  @endif
  @if ($element['code'] =='shipping')
    <tr><td>{!! $element['title'] !!}:</td><td align="right"><a href="#" class="updatePrice data-{{ $element['code'] }}"  data-name="{{ $element['code'] }}" data-type="text" data-pk="{{ $element['id'] }}" data-url="{{ route("order_update") }}" data-title="{{ trans('language.order.shipping_price') }}">{{
                      number_format($element['value']) }}</a></td></tr>
  @endif
  @if ($element['code'] =='discount')
    <tr><td>{!! $element['title'] !!}(-):</td><td align="right"><a href="#" class="updatePrice data-{{ $element['code'] }}" data-name="{{ $element['code'] }}" data-type="text" data-pk="{{ $element['id'] }}" data-url="{{ route("order_update") }}" data-title="{{ trans('language.order.discount') }}">{{
                      number_format($element['value']) }}</a></td></tr>
  @endif

   @if ($element['code'] =='total')
    <tr style="background:#f5f3f3;font-weight: bold;"><td>{!! $element['title'] !!}:</td><td align="right" class="data-{{ $element['code'] }}">{{ number_format($element['value']) }}</td></tr>
  @endif

  @if ($element['code'] =='received')
    <tr><td>{!! $element['title'] !!}(-):</td><td align="right"><a href="#" class="updatePrice data-{{ $element['code'] }}" data-name="{{ $element['code'] }}" data-type="text" data-pk="{{ $element['id'] }}" data-url="{{ route("order_update") }}" data-title="{{ trans('language.order.received') }}">{{
                      number_format($element['value']) }}</a></td></tr>
  @endif

@endforeach

  <tr  {!! $style !!}  class="data-balance"><td>{{ trans('language.order.balance') }}:</td><td align="right">{{($order->balance === NULL)?number_format($order->total):number_format($order->balance) }}</td></tr>
  <tr id="update-status" style="display: none;"></tr>
        </table>

    </div>
</div>

</div>




<div class="modal fade" id="removeItem" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h2 class="modal-title" id="exampleModalLabel">{{ trans('admin.delete') }}</h2>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body ">
        <p class="text-danger"><span class="glyphicon glyphicon-warning-sign"></span> {{ trans('admin.delete_confirm') }}</p>
      </div>
      <form>
          <input  type="hidden" name="form_id" value="">
      </form>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">{{ trans('admin.close') }}</button>
        <button id="removeItem-button" type="button" class="btn btn-primary">{{ trans('admin.delete') }}</button>
      </div>
    </div>
  </div>
</div>


<div class="modal fade" id="editItem" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg " role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h2 class="modal-title" id="exampleModalLabel">{{ trans('admin.edit') }}</h2>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form>
            <input type="hidden" name="editItem-form" value="">
          <table width="100%">
            <tr>
              <th style="width: 70px;">ID</th>
              <th style="width: 100px;">{{ trans('language.product.sku') }}</th>
              <th>{{ trans('language.product.name') }}</th>
              <th style="width: 70px;">{{ trans('language.product.quantity') }}</th>
              <th>{{ trans('language.product.price') }}</th>
              <th>{{ trans('language.product.total_price') }}</th>
              <th>{{ trans('language.product.attribute') }}</th>
            </tr>
            <tr>
              <td><input  type="number" disabled class="form_id form-control" name="form_id" value=""></td>
              <td><input   type="text" disabled class="form_sku form-control" name="form_sku" value=""></td>
              <td><input  type="text" class="form_name form-control" name="form_name" value=""></td>
              <td><input type="number" class="form_qty form-control" name="form_qty" value=""></td>
              <td><input  type="number" class="form_price form-control" name="form_price" value=""></td>
              <td><input  type="number" disabled class="form_total_price form-control" name="form_total_price" value=""></td>
              <td><input  type="text" class="form_attr form-control" name="form_attr" value=""></td>
            </tr>
          </table>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">{{ trans('admin.close') }}</button>
        <button type="button" class="btn btn-primary" id="editItem-button" >{{ trans('admin.save') }}</button>
      </div>
    </div>
  </div>
</div>


<div class="modal fade " id="addItem" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg " role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h2 class="modal-title" id="exampleModalLabel">{{ trans('language.product.add_product') }}</h2>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form>
            {{ csrf_field() }}
            <input type="hidden" name="addItem-form" value="{{ $order->id }}">
          <table width="100%">
            <tr>
              <th>{{ trans('language.product.name') }}</th>
              <th style="width: 150px;">{{ trans('language.product.sku') }}</th>
              <th style="width: 70px;">{{ trans('language.product.quantity') }}</th>
              <th>{{ trans('language.product.price') }}</th>
              <th>{{ trans('language.product.attribute') }}</th>
              <th style="width: 50px;"></th>
            </tr>
            <tr>
              <td>
                <select required onChange="selectProduct($(this));" class="form_id form-control" name="form_id[]">
                <option value="0">{{ trans('language.order.select_product') }}</option>
                @foreach ($products as $key => $value)
                    <option  value="{{ $key }}" >{{ $value }}</option>
                @endforeach
              </select>
            </td>
              <td><input type="text" disabled class="form_sku form-control" name="form_sku[]" value=""></td>
              <td><input required type="number" class="form_qty form-control" name="form_qty[]" value=""></td>
              <td><input required type="text" class="form_price form-control" name="form_price[]" value=""></td>
              <td><input type="text" class="form_attr form-control" name="form_attr[]" value=""></td>
              <td></td>
            </tr>


           <tr id="addnew">
              <td>
                <p></p>
                  <button type="button" class="btn btn-sm btn-success" id="more-item"><i class="fa fa-plus"></i> {{ trans('language.order.add_more') }}</button>
              </td>
            </tr>
          </table>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">{{ trans('admin.close') }}</button>
        <button type="button" class="btn btn-primary" id="addItem-button">{{ trans('admin.new') }}</button>
      </div>
    </div>
  </div>
</div>

<script type="text/javascript">
   function dataRemove(id){
    $('#removeItem [name="form_id"]').val(id);
  }

  function dataEdit(id){
    $('#editItem [name="editItem-form"]').val({{ $order->id }});
    $('#editItem .form_id').val($('.item_'+id+'_id').html().toString().replace(/,/g,''));
    $('#editItem .form_sku').val($('.item_'+id+'_sku').html().toString().replace(/,/g,''));
    $('#editItem .form_name').val($('.item_'+id+'_name').html().toString().replace(/,/g,''));
    $('#editItem .form_qty').val($('.item_'+id+'_qty').html().toString().replace(/,/g,''));
    $('#editItem .form_price').val($('.item_'+id+'_price').html().toString().replace(/,/g,''));
    $('#editItem .form_attr').val($('.item_'+id+'_attr').html());
    $('#editItem .form_total_price').val($('.item_'+id+'_total_price').html().toString().replace(/,/g,''));
    $('#editItem .form_price,#editItem .form_qty').change(function(){
      $('#editItem .form_total_price').val(
        parseInt($('#editItem .form_qty').val()) * parseInt($('#editItem .form_price').val())
        );
    });
  }


  $('#more-item').click(function(){
    $('tr#addnew').before('<tr><td><select required onChange="selectProduct($(this));" class="form_id form-control" name="form_id[]"><option value="0">{{ trans('language.order.select_product') }}</option>@foreach ($products as $key => $value)<option  value="{{ $key }}" >{{ $value }}</option>@endforeach</select></td><td><input disabled class="form_sku form-control" name="form_sku[]" value=""></td><td><input class="form_qty form-control" name="form_qty[]" value=""></td><td><input class="form_price form-control" name="form_price[]" value=""></td><td><input class="form_attr form-control" name="form_attr[]" value=""></td><td> <span class="glyphicon glyphicon-remove btn btn-danger" onclick="removeItemForm(this);"></span></td></tr>');
  });

    function removeItemForm(elmnt){
      elmnt.closest('tr').remove();
    }

    function selectProduct(elemnt){
        node = elemnt.closest('tr');
        var id = parseInt(node.find('option:selected').eq(0).val());
        if(id == 0){
            node.find('[name="form_sku[]"]').val('');
            node.find('[name="form_qty[]"]').eq(0).val('');
            node.find('[name="form_price[]"]').eq(0).val('');
            node.find('[name="form_attr[]"]').eq(0).val('');
        }else{
                $.ajax({
                url : '{{ route('getInfoProduct') }}',
                type : "get",
                dateType:"application/json; charset=utf-8",
                data : {
                     id : id
                },
                success: function(result){
                    var returnedData = JSON.parse(result);
                    node.find('[name="form_sku[]"]').val(returnedData.sku);
                    node.find('[name="form_qty[]"]').eq(0).val(1);
                    node.find('[name="form_price[]"]').eq(0).val(returnedData.price);
                    }
                });
        }

    }

    $('#editItem-button').click(function(){
        $.ajax({
            url:'{{ route("order_edit_post") }}',
            type:'post',
            dataType:'json',
            data:{
                'editItem-form':$('#editItem [name="editItem-form"]').val(),
                'pId':$('#editItem [name="form_id"]').val(),
                'pName':$('#editItem [name="form_name"]').val(),
                'pQty':$('#editItem [name="form_qty"]').val(),
                'pPrice':$('#editItem [name="form_price"]').val(),
                'pAttr':$('#editItem [name="form_attr"]').val(),
                '_token': "{{ csrf_token() }}",
            },
            success: function(result){
                if(parseInt(result.stt) ==1){
                    location.reload();
                }else{
                    alert('Error');
                }
            }
        });
    });

        $('#removeItem-button').click(function(){
        $.ajax({
            url:'{{ route("order_edit_post") }}',
            type:'post',
            dataType:'json',
            data:{
                'removeItem-form':1,
                'pId':$('#removeItem [name="form_id"]').val(),
                '_token': "{{ csrf_token() }}",
            },
            success: function(result){
                if(parseInt(result.stt) ==1){
                    location.reload();
                }else{
                    alert('Error');
                }
            }
        });
    });

        $('#addItem-button').click(function(){
        $.ajax({
            url:'{{ route("order_edit_post") }}',
            type:'post',
            dataType:'json',
            data:{
                'addItem-form':$('[name="addItem-form"]').val(),
                'pId':$('[name="form_id[]"]').serializeArray(),
                'pQty':$('[name="form_qty[]"]').serializeArray(),
                'pPrice':$('[name="form_price[]"]').serializeArray(),
                'pAttr':$('[name="form_attr[]"]').serializeArray(),
                '_token': "{{ csrf_token() }}",

            },
            success: function(result){
                if(parseInt(result.stt) ==1){
                    location.reload();
                }else{
                    alert(result.msg);
                }
            }
        });
    });

$(document).ready(function() {
    $('.updateInfo').editable({});

    $(".updatePrice").on("shown", function(e, editable) {
      var value = $(this).text().replace(/,/g, "");
      editable.input.$input.val(parseInt(value));
    });
    $('.updateStatus').editable({
        validate: function(value) {
            if (value == '') {
                return '{{  trans('language.admin.not_empty') }}';
            }
        }
    });
        $('.updateInfoRequired').editable({
        validate: function(value) {
            if (value == '') {
                return '{{  trans('language.admin.not_empty') }}';
            }
        }
    });
    $('.updatePrice').editable({
    ajaxOptions: {
    type: 'post',
    dataType: 'json'
    },
    validate: function(value) {
        if (value == '') {
            return '{{  trans('language.admin.not_empty') }}';
        }
        if (!$.isNumeric(value)) {
            return '{{  trans('language.admin.only_numeric') }}';
        }
    },

        success: function(response, newValue) {
            // var rs = JSON.parse(response);
            console.log(response);
            var rs = response;
            if(rs.stt ==1){
                $('.data-shipping').html(rs.msg.shipping);
                $('.data-received').html(rs.msg.received);
                $('.data-total').html(rs.msg.total);
                $('.data-shipping').html(rs.msg.shipping);
                $('.data-discount').html(rs.msg.discount);
                $('.data-balance').remove();
                $('#update-status').before(rs.msg.balance);
                $('.payment_status').html(rs.msg.payment_status);
            }
    }
    });
});


function toggleIcon(e) {
    $(e.target)
        .prev('.panel-heading')
        .find(".more-less")
        .toggleClass('glyphicon-plus glyphicon-minus');
}
$('.panel-group').on('hidden.bs.collapse', toggleIcon);
$('.panel-group').on('shown.bs.collapse', toggleIcon);

</script>
