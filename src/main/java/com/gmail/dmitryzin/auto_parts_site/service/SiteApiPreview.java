package com.gmail.dmitryzin.auto_parts_site.service;

import com.gmail.dmitryzin.auto_parts_site.dto.Paginator;
import com.gmail.dmitryzin.auto_parts_site.dto.PreviewCarPartDto;

import java.util.List;

public interface SiteApiPreview {
    public List<PreviewCarPartDto> getPreviewCarPartList(Paginator paginator);
    public List<PreviewCarPartDto> getPreviewCarPartListByNumber(String number, Paginator paginator);
    public List<PreviewCarPartDto> getPreviewCarPartListForAutoByBrand(Integer brand_id, Paginator paginator);
    public List<PreviewCarPartDto> getPreviewCarPartListForAutoByModel(Integer model_id, Paginator paginator);
    public List<PreviewCarPartDto> getPreviewCarPartListForAutoByCar(Integer car_id, Paginator paginator);
    public List<PreviewCarPartDto> getPreviewCarPartListForAutoByEngine(Integer engine_id, Paginator paginator);

}
