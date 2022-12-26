package aa.bb.cc.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import aa.bb.cc.dto.DataDto;

@Mapper
public interface DataMapper {

	//예제 리스트
	List<DataDto> dataSelect();
}
