package com.gmail.dmitryzin.auto_parts_site.repository;

import com.gmail.dmitryzin.auto_parts_site.dto.CarPartDto;
import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface CarPartRepository extends CrudRepository<CarPartDto, Integer> {

    @Query("""
            call site.car_part_get(:id)
            """)
    Optional<List<CarPartDto>> getCarPartById(@Param("id") Integer id);

    @Query("""
            call site.car_part_list(:page_num, :page_count, null, null, null, null, null)
            """)
    Optional<List<CarPartDto>> getCarPartList(@Param("page_num") Integer pageNum, @Param("page_count") Integer pageCount);
    @Query("""
            call site.car_part_list(:page_num, :page_count, :number, null, null, null, null)
            """)
    Optional<List<CarPartDto>> getCarPartListByNumber(@Param("page_num") Integer pageNum,
                                                      @Param("page_count") Integer pageCount,
                                                      @Param("number") String number);

    @Query("""
            call site.car_part_list(:page_num, :page_count, null, :brand_id, null, null, null)
            """)
    Optional<List<CarPartDto>> getCarPartListByBrand(@Param("page_num") Integer pageNum,
                                                      @Param("page_count") Integer pageCount,
                                                      @Param("brand_id") Integer brandId);

    @Query("""
            call site.car_part_list(:page_num, :page_count, null, null, :model_id, null, null)
            """)
    Optional<List<CarPartDto>> getCarPartListByModel(@Param("page_num") Integer pageNum,
                                                     @Param("page_count") Integer pageCount,
                                                     @Param("model_id") Integer modelId);

    @Query("""
            call site.car_part_list(:page_num, :page_count, null, null, null, :car_id, null)
            """)
    Optional<List<CarPartDto>> getCarPartListByCar(@Param("page_num") Integer pageNum,
                                                     @Param("page_count") Integer pageCount,
                                                     @Param("car_id") Integer carId);

    @Query("""
            call site.car_part_list(:page_num, :page_count, null, null, null, null, :engine_id)
            """)
    Optional<List<CarPartDto>> getCarPartListByEngine(@Param("page_num") Integer pageNum,
                                                   @Param("page_count") Integer pageCount,
                                                   @Param("engine_id") Integer engineId);

    @Query("""
            call site.car_part_analog_list(:page_num, :page_count, :id)
            """)
    Optional<List<CarPartDto>> getCarPartAnalogList(@Param("page_num") Integer pageNum,
                                                      @Param("page_count") Integer pageCount,
                                                      @Param("id") Integer carPartId);
}
