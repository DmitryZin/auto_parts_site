package com.gmail.dmitryzin.auto_parts_site.dto;

import lombok.Data;

@Data
public class Paginator {
    private final int pageNum;
    private final int pageCount;
}
