const baseUrl = 'https://palmail.betweenltd.com/api';

const loginUrl = '$baseUrl/login';
const registerUrl = '$baseUrl/register';
const userInfoUrl = '$baseUrl/user';
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
const createCategoriesUrl = '$baseUrl/categories';
const getAlltagsUrl = '$baseUrl/tags';
const createtagsUrl = '$baseUrl/tags';
const getRoleUrl = '$baseUrl/roles';
const createSenderUsrl = "$baseUrl/senders";
const attachmentsUrl = '$baseUrl/attachments';
String deleteSenderUrl(int idUser) {
  return "$baseUrl/senders/$idUser";
}

String updateSendersUrl(int idUser) {
  return "$baseUrl/senders/$idUser";
}

String SearchUrl(
    {String? statusId, required String text, String? start, String? end}) {
  end == null ? end = '' : end = '&$end';
  start == null ? start = '' : start = '&$start';
  statusId == null ? statusId = '' : statusId = '&$statusId';
  print('hi const "$baseUrl/search?text=$text$start$end$statusId"');
  return "$baseUrl/search?text=$text$start$end$statusId";
}

String getAlltagsWithMailUrl(var tagsId) {
  return "$baseUrl/tags?tags=$tagsId";
}

String getAlltagsWithIdUrl(int idMail) {
  return '$baseUrl/mails/$idMail/tags';
}

String deleteMailUrl(int idmail) {
  return '$baseUrl/mails/$idmail';
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

// const updateUserUrl = ;
String updateUserUrl({required String name, required int id}) {
  return '$baseUrl/user/$id?name=$name';
}

// const getSinglecategoriesUrl = ;
String getSinglecategoriesUrl(int categoryId) {
  return '$baseUrl/categories/$categoryId/mails';
}

// const getAllStutassUrl =
String getAllStutassUrl(bool value) {
  return '$baseUrl/statuses?mail=$value';
}

// const getSingleStatusUrl =
String getSingleStatusUrl({required int statusId, required bool value}) {
  return "$baseUrl/statuses/$statusId?mail=$value";
}

// const getAllSenderUrl =
String getAllSenderUrl(bool value) {
  return '$baseUrl/senders?mail=$value';
}

// const getSingleSenderUrl =
String getSingleSenderUrl({required int id, required bool value}) {
  return '$baseUrl/senders/$id?mail=$value';
}
