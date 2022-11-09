package bd.gov.barcapps.cms.service.impl;

import bd.gov.barcapps.cms.model.UsersInfo;
import bd.gov.barcapps.cms.repository.UsersInfoRepo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.math.BigInteger;
import java.util.List;
@Service
@RequiredArgsConstructor
public class UsersInfoServiceImpl implements UsersInfoService {

    private final UsersInfoRepo usersInfoRepo;

    @Override
    public List<UsersInfo> getAllUsers() {
        return usersInfoRepo.findAll();
    }

    @Override
    public String adduser(UsersInfo usersInfo) {
        usersInfoRepo.save(usersInfo);
        return "User Successfully Added.";
    }

    @Override
    public UsersInfo getUserById(BigInteger id) {
        return usersInfoRepo.getUserById(id);
    }

    @Override
    public String addMultipleUsers(List<UsersInfo> usersInfoList) {
        usersInfoRepo.saveAll(usersInfoList);
        return "Success";
    }
}
