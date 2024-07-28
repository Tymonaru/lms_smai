@extends('layouts.app')


@section('style')
  @include('layouts.style')

@endsection

@section('content')
<main id="main" class="main">
    <div class="pagetitle">
      <h1>Lihat Materi</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="#">Menu</a></li>
          <li class="breadcrumb-item">Pembelajaran</li>
          <li class="breadcrumb-item active">Lihat Materi</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->
    
    <section class="section">
      <div class="row">
        <div class="col-lg-12">
          <div class="card">
            <div class="card-body">
              <div class="d-flex justify-content-md-between p-2">
                <h5 class="card-title">Lihat Materi</h5>
        </div>

        <!-- Table with stripped rows -->
            <table class="table datatable">
              <thead>
                <tr>
                  <th scope="col">No</th>
                  <th scope="col">Pertemuan</th>
                  <th scope="col">Materi</th>
                  <th scope="col">Guru</th>
                  <th scope="col">Tanggal</th>
                  <th scope="col" class="text-center">Aksi</th>
                </tr>
              </thead>
              <tbody>
                
                {{-- @foreach($dtsiswa as $siswa)  --}}
              {{-- @dd($siswa->siswa->user) --}}
                {{-- <tr>
                  <th scope="row">
                    <img src="{{ asset('storage/'.$siswa->siswa->foto) }}" alt="{{ $siswa->siswa->user->name }}" class="img-fluid foto-siswa">  
                  </th>
                  <td>{{ $siswa->siswa->NISN }}</td>
                  <td>{{ $siswa->siswa->user->name }}</td>
                  <td>{{ $siswa->kelas_jurusan->kelas->tingkat_kelas }}</td>
                  <td>{{ $siswa->kelas_jurusan->jurusan->nama_jurusan }}</td>
                  <td>
                    <div class="d-flex justify-content-evenly">
                      <div data-bs-toggle="modal" data-bs-target="#exampleModal">
                        <button class="btn btn-sm btn-secondary detail_siswa" data-id ="{{$siswa->id}}" data-bs-toggle="tooltip" data-bs-placement="top" title="Detail Siswa" ><i class="fas fa-info-circle"></i></button>
                      </div>
                    </div>
                  </td>
                </tr>
                @endforeach --}}
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
    </section>
    
  
</main>
@endsection

@section('script')
    @include('layouts.script')
    <script>
      $('.hapus-absen').click(function () {
    let form = $(this).parent();
    Swal.fire({
        icon: 'question',
        title: 'Hapus absen?',
        text: 'Apa anda yakin akan menghapus Absen? ',
        showCancelButton:true,
        showConfirmButton:true,

    }).then((result)=>{
        if(result.isConfirmed){
            form.submit();
        }
    })  
})
    </script>
@endsection