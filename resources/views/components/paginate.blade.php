

@php
    $pageCount = 3;
@endphp


@if ($paginator->hasPages())
<nav class="collection-paginate clearfix relative nav_pagi w_100">
    <ul class="pagination clearfix">
        {{-- Pagination Elements --}}
        @foreach ($elements as $element)
        {{-- Array Of Links --}}
            @if (is_array($element))
                @foreach ($element as $page => $url)
                    @php
                        $dotleft = false;
                        $dotright = false;
                    @endphp
                    @if ($page == $paginator->currentPage())
                        <li class="active page-item disabled">
                            <a class="page-link" href="#">{{ $page }}</a>
                        </li>
                    @elseif (
                        $page <= $pageCount ||
                            abs($paginator->currentPage() - $page) <= $pageCount ||
                            $page > $paginator->lastPage() - $pageCount)
                        <li  class=" page-item">
                            <a class="page-link" href="{{ $url }}">{{ $page }}</a>
                        </li>
                    @elseif ($page > $pageCount && $page < $paginator->currentPage() && $dotleft == false)
                        @php
                            $dotleft = true;
                        @endphp
                     @elseif ($page <= $paginator->lastPage() - $pageCount && $page > $paginator->currentPage() && $dotright == false)
                        @php
                            $dotright = true;
                        @endphp
                        <li>
                            <a>
                            </a>
                        </li>
                    @endif
                @endforeach
            @endif
        @endforeach
         {{-- Next Page Link --}}
         @if ($paginator->hasMorePages())
         <li class="page-item"><a class="page-link link-next-pre" href="{{ $paginator->nextPageUrl() }}">&raquo;</a></li>
        @else
            <li><a href="#"><i class="ti-angle-right"></i></a></li>
        @endif

    </ul>
</nav>
@endif