const baseUrl = 'https://palmail.betweenltd.com/api';

const loginUrl = '$baseUrl/login';
const registerUrl = '$baseUrl/register';
const userInfoUrl = '$baseUrl/user';
const updateUserUrl = '$baseUrl/user/update';
const logoutUrl = '$baseUrl/logout';
const allUsersUrl = '$baseUrl/users';
//const createUserUrl='$baseUrl/'
//const getUserIdUrl = '$baseUrl/users/';
//const updateUserIdUrl = '$baseUrl/users/';
//const deleteUserUrl = '$baseUrl/users/';
const getMailsUrl = '$baseUrl/mails';
String deleteUserUrl(int idUser) {
  return '$baseUrl/users/$idUser';
}

String updateUserIdUrl(int idUser) {
  return '$baseUrl/users/$idUser';
}

String getUserIdUrl(int idUser) {
  return '$baseUrl/users/$idUser';
}

String changePasswordUrl(int idUser) {
  return '$baseUrl/users/$idUser/password';
}

String changeRoleUrl(int idUser) {
  return '$baseUrl/users/$idUser/role';
}

const allMails = '$baseUrl/mails';
