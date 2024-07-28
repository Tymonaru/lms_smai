@extends('layouts.app')


@section('style')
  @include('layouts.style')
@endsection

@section('content')
<main id="main" class="main">
    <div class="pagetitle">
        <h1>Dashboard</h1>
        <nav>
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
            <li class="breadcrumb-item active">Dashboard</li>
          </ol>
        </nav>
      </div><!-- End Page Title -->
  
  <section class="section dashboard">
    <div class="row justify-content-evenly">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
                    <figure class="text-center">
                        <img src="{{ asset('img/Logo.png') }}" height="120" width="100" class="img-fluid mt-3 " alt="Logo SMA">
                    </figure>
                    <h5 class="text-center card-title mb-0">Selamat Datang di LMS SMA Islam Lumajang</h5>
                    {{-- <p class="text-center">Muara Leka, Muara Muntai, Kabupaten Kutai Kartanegara, Kalimantan Timur 75562</p> --}}
                </div>
            </div>
        </div>
        <div class="col-lg-12">
            <div class="row">
                <div class="col-md-6">
                    <div class="card info-card sales-card">
                        <div class="card-body">
                            <h5 class="card-title">Data siswa <span>| Today</span></h5>
                            <div class="d-flex align-items-center">
                              <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                <i class="fas fa-users"></i>
                              </div>
                              <div class="ps-3">
                                <h6>{{ $dtsiswa }}</h6>
                              </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card info-card sales-card">
                        <div class="card-body">
                            <h5 class="card-title">Data Guru <span>| Today</span></h5>
                            <div class="d-flex align-items-center">
                              <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                 <i class="fas fa-user-tie"></i>

                            </div>
                              <div class="ps-3">
                                <h6>{{ $dtguru }}</h6>        
                              </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card info-card sales-card">
                        <div class="card-body">
                            <h5 class="card-title">Data Kelas <span>| Today</span></h5>
          
                            <div class="d-flex align-items-center">
                              <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                <i class="fas fa-users"></i>
                              </div>
                              <div class="ps-3">
                                <h6>{{ $dtkelas }}</h6>
                              </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card info-card sales-card">
                        <div class="card-body">
                            <h5 class="card-title">Data Mapel <span>| Today</span></h5>
                            <div class="d-flex align-items-center">
                              <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                 <i class="fas fa-user-tie"></i>
                            </div>
                              <div class="ps-3">
                                <h6>{{ $dtmapel }}</h6>
                              </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
  </section>
</main>
@endsection

@section('script')
    @include('layouts.script')
@endsection