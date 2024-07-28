<div class="col-md-6">
    {{-- Form::select --}}
    <div class="form-floating">
        {!! Form::text('kelas_id',null,['placeholder'=>'Pilih Kelas','class'=>'form-select','id'=>"Kelas"]) !!}
        <label for="floatingSelect">Kelas</label> 
      </div>
  </div>
  <div class="col-md-6">
    <div class="form-floating">
        {!! Form::number('tempat_lahir',null,['class' => 'form-control'.(($errors->has('tempat_lahir'))?" border-danger":""), 'id'=>'floatingName','placeholder'=>'Tempat Lahir','autocomplete'=>'off']) !!}
      <label for="floatingName">Pertemuan</label>
    
    </div>
    @error('tempat_lahir')
      <div class="invalid-feedback" style="display:block;">
        {{$errors->first('tempat_lahir')}}
      </div>     
    @enderror
  </div>
    <div class="col-md-12">
      <div class="form-floating">
          {!! Form::text('name',null,['class' => 'form-control'.(($errors->has('name'))?" border-danger":""), 'id'=>'validationTooltip03','placeholder'=>'Nama guru','autocomplete'=>'off']) !!}
        <label for="floatingName">Nama Materi</label>
      </div>
      @error('name')
        <div class="invalid-feedback" style="display:block;">
          {{$errors->first('name')}}
        </div>     
      @enderror
    </div>
    <div class="col-12">
        <div class="form-floating">
            {!! Form::textarea('alamat',null,['class'=>'form-control'.(($errors->has('alamat'))?" border-danger":""),'id'=>'Alamat','placeholder'=>'Alamat','autocomplete'=>'off','style'=>"height: 100px;"]) !!}
          <label for="Alamat">Deskripsi</label>
        </div>
        @error('alamat')
          <div class="invalid-feedback" style="display:block;">
            {{$errors->first('alamat')}}
          </div>     
        @enderror
      </div>
      <div class="col-md-6">
        <div class="form-floating">
            {{-- Form:Select --}}
            {!! Form::text('mapel_id',null,['placeholder'=>'Pilih Mata pelajaran','class'=>'form-select','id'=>"Mapel"]) !!}
          <label for="floatingSelect">Mata pelajaran</label> 
        </div>
      @error('mapel_id')
        <div class="invalid-feedback" style="display:block;">
          {{$errors->first('mapel_id')}}
        </div>     
      @enderror
    </div>
  <div class="col-md-4">
    <div class="form-floating">
        {!! Form::date('tgl_lahir',null,['class' => 'form-control'.(($errors->has('tgl_lahir'))?" border-danger":""), 'id'=>'floatingName','placeholder'=>'Tanggal Lahir','autocomplete'=>'off']) !!}
      <label for="floatingName">Deadline</label>
    </div>
    @error('tgl_lahir')
      <div class="invalid-feedback" style="display:block;">
        {{$errors->first('tgl_lahir')}}
      </div>     
    @enderror
  </div>  
  <div class="col-md-12">
    <div class="row mb-3">
      <label for="inputNumber" class="col-form-label">Upload Materi</label>
      <div class="col-sm-12">
        {!! Form::file('image',['class'=>'form-control','id'=>'formFile']); !!}
        {{-- <input class="form-control" type="file" id="formFile"> --}}
      </div>
    </div>
  </div>
  
