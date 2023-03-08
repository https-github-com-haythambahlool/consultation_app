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
// const getSingleMailUrl = '$baseUrl/mails/{id}';
const createMailUrl = '$baseUrl/mails';
// const updateMailUrl = '$baseUrl/mails/{id}';
// const deleteSingleMailCopy = '$baseUrl/mails/{id}';
const getAllcategoriesUrl = '$baseUrl/categories';
const getSinglecategoriesUrl = '$baseUrl/categories/1';
const createCategoriesUrl = '$baseUrl/categories';
const getAlltagsUrl = '$baseUrl/tags';
const createtagsUrl = '$baseUrl/tags';
const getAllStutassUrl = '$baseUrl/statuses?mail=false';
const getSingleStatusUrl = "$baseUrl/statuses/1?mail=true";
const getRoleUrl = '$baseUrl/roles';
const getAllSenderUrl = '$baseUrl/senders?mail=true';
const getSingleSenderUrl = '$baseUrl/senders/6?mail=false';
const createSenderUsrl = "$baseUrl/senders";

String deleteSenderUrl(int idUser) {
  return "$baseUrl/senders/$idUser";
}

String updateSendersUrl(int idUser) {
  return "$baseUrl/senders/$idUser";
}

String SearchUrl(int idUser) {
  return "$baseUrl/search?text=test&start&end&$idUser";
}

String getAlltagsWithMailUrl(String email) {
  return "$baseUrl/tags?tags=[2,3]$email";
}

String getAlltagsWithIdUrl(int idUser) {
  return '$baseUrl/mails/$idUser/tags';
}

String deleteSingleMailCopyUrl(int idUser) {
  return '$baseUrl/mails/$idUser';
}

String updateMailUrl(int idUser) {
  return "$baseUrl/mails/$idUser";
}

String getSingleMailUrl(int idUser) {
  return "$baseUrl/mails/$idUser";
}

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
