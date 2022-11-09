package bd.gov.barcapps.cms.repository;

import bd.gov.barcapps.cms.model.UsersInfo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.math.BigInteger;
@Repository
public interface UsersInfoRepo extends JpaRepository<UsersInfo, BigInteger> {
    @Query("SELECT u FROM UsersInfo u WHERE u.id=:id")
    UsersInfo getUserById(@Param("id") BigInteger id);
}
