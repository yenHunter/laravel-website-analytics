package bd.gov.barcapps.cms.service.impl;

import bd.gov.barcapps.cms.model.UsersInfo;

import java.math.BigInteger;
import java.util.List;

public interface UsersInfoService {

    List<UsersInfo> getAllUsers();
    String adduser(UsersInfo usersInfo);
    UsersInfo getUserById(BigInteger id);
    String addMultipleUsers(List<UsersInfo> usersInfoList);
}
