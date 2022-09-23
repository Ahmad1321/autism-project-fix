<ul class="navbar-nav bg-slate-800 sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="{{ url('/') }}">
                <div class="sidebar-brand-text mx-4 py-2 px-4 bg-red-400 text-slate-800 rounded-xl">
                    Kembali
                </div>
            </a>

            <li class="nav-item">
                <a class="nav-link" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
                    <span>{{ __('User Management') }}</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <!-- <a class="collapse-item {{ request()->is('admin/permissions') || request()->is('admin/permissions/*') ? 'active' : '' }}" href="{{ route('admin.permissions.index') }}"> <i class="fa fa-briefcase mr-2"></i> {{ __('Permissions') }}</a>
                        <a class="collapse-item {{ request()->is('admin/roles') || request()->is('admin/roles/*') ? 'active' : '' }}" href="{{ route('admin.roles.index') }}"><i class="fa fa-briefcase mr-2"></i> {{ __('Roles') }}</a> -->
                        <a class="collapse-item {{ request()->is('admin/users') || request()->is('admin/users/*') ? 'active' : '' }}" href="{{ route('admin.users.index') }}"> <i class="fa fa-user mr-2"></i> {{ __('Users') }}</a>
                    </div>
                </div>
            </li>

            <!--<li class="nav-item {{ request()->is('admin/categories') || request()->is('admin/categories') ? 'active' : '' }}">
                <a class="nav-link" href="{{ route('admin.categories.index') }}">
                    <i class="fas fa-cogs"></i>
                    <span>Kategori</span></a>
            </li>

            <li class="nav-item {{ request()->is('admin/questions') || request()->is('admin/questions') ? 'active' : '' }}">
                <a class="nav-link" href="{{ route('admin.questions.index') }}">
                    <i class="fas fa-cogs"></i>
                    <span>Pertanyaan</span></a>
            </li> -->

            <li class="nav-item {{ request()->is('admin/options') || request()->is('admin/options') ? 'active' : '' }}">
                <a class="nav-link" href="{{ route('admin.options.index') }}">
                    <i class="fas fa-cogs"></i>
                    <span>Opsi</span></a>
            </li>

            <li class="nav-item {{ request()->is('admin/results') || request()->is('admin/results') ? 'active' : '' }}">
                <a class="nav-link" href="{{ route('admin.results.index') }}">
                    <i class="fas fa-cogs"></i>
                    <span>Hasil Survei</span></a>
            </li>
            <li class="nav-item {{ request()->is('admin/final') || request()->is('admin/final') ? 'active' : '' }}">
                <a class="nav-link" href="{{ route('admin.final.index') }}">
                    <i class="fas fa-cogs"></i>
                    <span>Hasil dan Kesimpulan</span></a>
            </li>


        </ul>