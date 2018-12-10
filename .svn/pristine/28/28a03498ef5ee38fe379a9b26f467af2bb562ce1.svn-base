package com.web;

import com.domain.User;
import com.service.UserRepository;
import com.service.UserService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.*;

/**
 * <一句话功能简述>
 * <功能详细描述>
 *
 * @author sun
 * @version [版本号, 2018年5月23日]
 */
@RestController
@RequestMapping(value = "/users") // 通过这里配置使下面的映射都在/users下，可去除
public class UserController {
    @Resource
    UserService userService;

    @Resource
    UserRepository userRepository;

    static Map<Long, User> users = Collections.synchronizedMap(new HashMap<Long, User>());

    @RequestMapping(value = {""}, method = RequestMethod.GET)
    public List<User> getUserList() {
        List<User> r = new ArrayList<User>(users.values());
        return r;
    }

    @RequestMapping(value = "", method = RequestMethod.POST)
    public String postUser(@RequestBody User user) {
        users.put(user.getId(), user);
        return "success";
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public User getUser(@PathVariable Long id) {
        return users.get(id);
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.PUT)
    public String putUser(@PathVariable Long id, @RequestBody User user) {
        User u = users.get(id);
        u.setName(user.getName());
        u.setAge(user.getAge());
        users.put(id, u);
        return "success";
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
    public String deleteUser(@PathVariable Long id) {
        users.remove(id);
        return "success";
    }

    @RequestMapping("/name")
    public String findByName(String name) {
        User user = userRepository.findByName(name);
        return user.getAge().toString();
    }

}