/*
 Navicat MySQL Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : wechat

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 10/05/2019 00:15:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `picture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `book` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `major` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `grade` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/EC/p1.jpg', '2017-report-economic-well-being-us-households-201805', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/EC/2017-report-economic-well-being-us-households-201805.pdf', 'Economy', 'Sophomore');
INSERT INTO `book` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/EC/p1.jpg', '41746710', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/EC/41746710.pdf', 'Economy', 'Senior');
INSERT INTO `book` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/EC/p1.jpg', 'American-Alliance-of-Museums-web', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/EC/American-Alliance-of-Museums-web.pdf', 'Economy', 'Senior');
INSERT INTO `book` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/EC/p1.jpg', 'economic-development-and-trade', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/EC/economic-development-and-trade.pdf', 'Economy', 'Senior');
INSERT INTO `book` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/EC/p1.jpg', 'economic-development-framework', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/EC/economic-development-framework.pdf', 'Economy', 'Senior');
INSERT INTO `book` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/EC/p1.jpg', 'ERP_2018_Final-FINAL', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/EC/ERP_2018_Final-FINAL.pdf', 'Economy', 'Freshman');
INSERT INTO `book` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/EC/p1.jpg', 'forecast0918', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/EC/forecast0918.pdf', 'Economy', 'Junior');
INSERT INTO `book` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/EC/p1.jpg', 'Induction-task-Economic-thinkers-stimulus', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/EC/Induction-task-Economic-thinkers-stimulus.pdf', 'Economy', 'Senior');
INSERT INTO `book` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/EC/p1.jpg', 'MIC_3e_Ch7', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/EC/MIC_3e_Ch7.pdf', 'Economy', 'Sophomore');
INSERT INTO `book` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/EC/p1.jpg', 'theory', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/EC/theory.pdf', 'Economy', 'Senior');
INSERT INTO `book` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/EC/p1.jpg', 'the_economic_effects_of_designn', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/EC/the_economic_effects_of_designn.pdf', 'Economy', 'Senior');
INSERT INTO `book` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/EC/p1.jpg', 'What You Should Know_ Economic Development', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/EC/What You Should Know_ Economic Development.pdf', 'Economy', 'Freshman');
INSERT INTO `book` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/CS/p1.jpg', '11 ways to mitigate insider security threats.', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/CS/11 ways to mitigate insider security threats.docx', 'Computer Science', 'Sophomore');
INSERT INTO `book` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/CS/p1.jpg', '17 ways to prevent identity theft when traveling.', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/CS/17 ways to prevent identity theft when traveling.docx', 'Computer Science', 'Sophomore');
INSERT INTO `book` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/CS/p1.jpg', '4 questions to consider when launching a data prot.', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/CS/4 questions to consider when launching a data prot.docx', 'Computer Science', 'Freshman');
INSERT INTO `book` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/CS/p1.jpg', 'A guide for businesses to China.', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/CS/A guide for businesses to China.docx', 'Computer Science', 'Freshman');
INSERT INTO `book` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/CS/p1.jpg', 'Caution.', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/CS/Caution.docx', 'Computer Science', 'Freshman');
INSERT INTO `book` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/CS/p1.jpg', 'Cyber Threats and the Criminals Behind Them.', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/CS/Cyber Threats and the Criminals Behind Them.docx', 'Computer Science', 'Senior');
INSERT INTO `book` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/CS/p1.jpg', 'Cybercrime costs the global economy.', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/CS/Cybercrime costs the global economy.docx', 'Computer Science', 'Senior');
INSERT INTO `book` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/CS/p1.jpg', 'Darknets.', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/CS/Darknets.docx', 'Computer Science', 'Sophomore');
INSERT INTO `book` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/CS/p1.jpg', 'Don’t get hooked.', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/CS/Don’t get hooked.docx', 'Computer Science', 'Junior');
INSERT INTO `book` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/CS/p1.jpg', 'E-mail_Security', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/CS/E-mail_Security.pdf', 'Computer Science', 'Freshman');
INSERT INTO `book` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/CS/p1.jpg', 'Ethical_Hacking_DDOS_Attacks', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/CS/Ethical_Hacking_DDOS_Attacks.pdf', 'Computer Science', 'Junior');
INSERT INTO `book` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/CS/p1.jpg', 'Ethical_Hacking_Hacker_Types', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/CS/Ethical_Hacking_Hacker_Types.pdf', 'Computer Science', 'Sophomore');
INSERT INTO `book` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/CS/p1.jpg', 'Ethical_Hacking_Overview', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/CS/Ethical_Hacking_Overview.pdf', 'Computer Science', 'Junior');
INSERT INTO `book` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/CS/p1.jpg', 'Ethical_Hacking_Process', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/CS/Ethical_Hacking_Process.pdf', 'Computer Science', 'Sophomore');
INSERT INTO `book` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/CS/p1.jpg', 'Ethical_Hacking_Social_Engineering', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/CS/Ethical_Hacking_Social_Engineering.pdf', 'Computer Science', 'Freshman');
INSERT INTO `book` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/CS/p1.jpg', 'Ethical_Hacking_Terminologies', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/CS/Ethical_Hacking_Terminologies.pdf', 'Computer Science', 'Sophomore');
INSERT INTO `book` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/CS/p1.jpg', 'Ethical_Hacking_Trojan_Attacks', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/CS/Ethical_Hacking_Trojan_Attacks.pdf', 'Computer Science', 'Freshman');
INSERT INTO `book` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/CS/p1.jpg', 'Five ways to detect a malicious.', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/CS/Five ways to detect a malicious.docx', 'Computer Science', 'Sophomore');
INSERT INTO `book` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/CS/p1.jpg', 'frequently-asked-questions-about-gdpr', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/CS/frequently-asked-questions-about-gdpr.pdf', 'Computer Science', 'Junior');
INSERT INTO `book` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/CS/p1.jpg', 'Gift_of_Fire_Sara_Baase_4th_ed', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/CS/Gift_of_Fire_Sara_Baase_4th_ed.pdf', 'Computer Science', 'Freshman');
INSERT INTO `book` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/CS/p1.jpg', 'Internet_Overview', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/CS/Internet_Overview.pdf', 'Computer Science', 'Sophomore');
INSERT INTO `book` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/CS/p1.jpg', 'IT pros face increased cyberthreats.', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/CS/IT pros face increased cyberthreats.docx', 'Computer Science', 'Junior');
INSERT INTO `book` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/CS/p1.jpg', 'Make your voice heard in the battle to preserve ne.', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/CS/Make your voice heard in the battle to preserve ne.docx', 'Computer Science', 'Senior');
INSERT INTO `book` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/CS/p1.jpg', 'Patents_Trademarks_and_Copyrights__The_Basics___Investopedia', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/CS/Patents_Trademarks_and_Copyrights__The_Basics___Investopedia.pdf', 'Computer Science', 'Junior');
INSERT INTO `book` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/CS/p1.jpg', 'Phishing emails behind notorious ransomware scams.', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/CS/Phishing emails behind notorious ransomware scams.docx', 'Computer Science', 'Freshman');
INSERT INTO `book` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/CS/p1.jpg', 'Short Bytes.', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/CS/Short Bytes.docx', 'Computer Science', 'Sophomore');
INSERT INTO `book` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/CS/p1.jpg', 'Six ways to protect your small business from cyber.', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/CS/Six ways to protect your small business from cyber.docx', 'Computer Science', 'Senior');
INSERT INTO `book` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/CS/p1.jpg', 'social engineering.', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/CS/social engineering.docx', 'Computer Science', 'Junior');
INSERT INTO `book` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/CS/p1.jpg', 'The Difference Between Data Security and Privacy.', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/CS/The Difference Between Data Security and Privacy.docx', 'Computer Science', 'Freshman');
INSERT INTO `book` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/CS/p1.jpg', 'The State of Cybercrime.', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/CS/The State of Cybercrime.docx', 'Computer Science', 'Sophomore');
INSERT INTO `book` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/CS/p1.jpg', 'Top 5 cybersecurity facts.', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/CS/Top 5 cybersecurity facts.docx', 'Computer Science', 'Junior');
INSERT INTO `book` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/Ph/p1.jpg', 'Acis and Galatea', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/Ph/Acis and Galatea.pdf', 'Philosophy', 'Sophomore');
INSERT INTO `book` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/Ph/p1.jpg', 'Alpheus and Arethusa', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/Ph/Alpheus and Arethusa.pdf', 'Philosophy', 'Junior');
INSERT INTO `book` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/Ph/p1.jpg', 'Ariadne', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/Ph/Ariadne.pdf', 'Philosophy', 'Senior');
INSERT INTO `book` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/Ph/p1.jpg', 'Baucis and Philemon', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/Ph/Baucis and Philemon.pdf', 'Philosophy', 'Senior');
INSERT INTO `book` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/Ph/p1.jpg', 'Ceyx and Alcycone', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/Ph/Ceyx and Alcycone.pdf', 'Philosophy', 'Freshman');
INSERT INTO `book` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/Ph/p1.jpg', 'Daphne and Apollo', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/Ph/Daphne and Apollo.pdf', 'Philosophy', 'Sophomore');
INSERT INTO `book` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/Ph/p1.jpg', 'Hero and Leander', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/Ph/Hero and Leander.pdf', 'Philosophy', 'Sophomore');
INSERT INTO `book` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/Ph/p1.jpg', 'ICPH 3, Plotinus', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/Ph/ICPH 3, Plotinus.pdf', 'Philosophy', 'Senior');
INSERT INTO `book` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/Ph/p1.jpg', 'ICPH 3, Xenophon', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/Ph/ICPH 3, Xenophon.pdf', 'Philosophy', 'Sophomore');
INSERT INTO `book` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/Ph/p1.jpg', 'ICPH 4, Aquinas', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/Ph/ICPH 4, Aquinas.pdf', 'Philosophy', 'Junior');
INSERT INTO `book` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/Ph/p1.jpg', 'ICPH 4, Du__rer', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/Ph/ICPH 4, Du__rer.pdf', 'Philosophy', 'Sophomore');
INSERT INTO `book` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/Ph/p1.jpg', 'ICPH 4, Pythagoras', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/Ph/ICPH 4, Pythagoras.pdf', 'Philosophy', 'Freshman');
INSERT INTO `book` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/Ph/p1.jpg', 'ICPH 5, Grosseteste 1', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/Ph/ICPH 5, Grosseteste 1.pdf', 'Philosophy', 'Senior');
INSERT INTO `book` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/Ph/p1.jpg', 'ICPH 5, Grosseteste 2', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/Ph/ICPH 5, Grosseteste 2.pdf', 'Philosophy', 'Sophomore');
INSERT INTO `book` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/Ph/p1.jpg', 'ICPH 9, Hutcheson 1', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/Ph/ICPH 9, Hutcheson 1.pdf', 'Philosophy', 'Senior');
INSERT INTO `book` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/Ph/p1.jpg', 'ICPH 9, Hutcheson 2', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/Ph/ICPH 9, Hutcheson 2.pdf', 'Philosophy', 'Senior');
INSERT INTO `book` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/Ph/p1.jpg', 'Orpheus and Eurydice', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/Ph/Orpheus and Eurydice.pdf', 'Philosophy', 'Senior');
INSERT INTO `book` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/Ph/p1.jpg', 'Phaedra and Hippolytus', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/Ph/Phaedra and Hippolytus.pdf', 'Philosophy', 'Junior');
INSERT INTO `book` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/Ph/p1.jpg', 'Pygmalion and Galatea', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/Book/Ph/Pygmalion and Galatea.pdf', 'Philosophy', 'Sophomore');

-- ----------------------------
-- Table structure for bookcomment
-- ----------------------------
DROP TABLE IF EXISTS `bookcomment`;
CREATE TABLE `bookcomment`  (
  `openid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `bookname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bookcomment
-- ----------------------------
INSERT INTO `bookcomment` VALUES ('oFPA65BTgQ-MRSdCKjx5FUr4r4nU', 'A guide for businesses to China.', 'R');

-- ----------------------------
-- Table structure for bookfunction
-- ----------------------------
DROP TABLE IF EXISTS `bookfunction`;
CREATE TABLE `bookfunction`  (
  `good` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `save` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `bookname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `openid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bookfunction
-- ----------------------------
INSERT INTO `bookfunction` VALUES (NULL, NULL, '2017-report-economic-well-being-us-households-201805', NULL);
INSERT INTO `bookfunction` VALUES (NULL, NULL, '41746710', NULL);
INSERT INTO `bookfunction` VALUES (NULL, NULL, 'American-Alliance-of-Museums-web', NULL);
INSERT INTO `bookfunction` VALUES (NULL, NULL, 'economic-development-and-trade', NULL);
INSERT INTO `bookfunction` VALUES (NULL, NULL, 'economic-development-framework', NULL);
INSERT INTO `bookfunction` VALUES (NULL, NULL, 'ERP_2018_Final-FINAL', NULL);
INSERT INTO `bookfunction` VALUES (NULL, NULL, 'forecast0918', NULL);
INSERT INTO `bookfunction` VALUES (NULL, NULL, 'Induction-task-Economic-thinkers-stimulus', NULL);
INSERT INTO `bookfunction` VALUES (NULL, NULL, 'MIC_3e_Ch7', NULL);
INSERT INTO `bookfunction` VALUES (NULL, NULL, 'theory', NULL);
INSERT INTO `bookfunction` VALUES (NULL, NULL, 'the_economic_effects_of_designn', NULL);
INSERT INTO `bookfunction` VALUES (NULL, NULL, 'What You Should Know_ Economic Development', NULL);
INSERT INTO `bookfunction` VALUES (NULL, NULL, '11 ways to mitigate insider security threats.', NULL);
INSERT INTO `bookfunction` VALUES (NULL, NULL, '17 ways to prevent identity theft when traveling.', NULL);
INSERT INTO `bookfunction` VALUES (NULL, NULL, '4 questions to consider when launching a data prot.', NULL);
INSERT INTO `bookfunction` VALUES (NULL, NULL, 'A guide for businesses to China.', NULL);
INSERT INTO `bookfunction` VALUES (NULL, NULL, 'Caution.', NULL);
INSERT INTO `bookfunction` VALUES (NULL, NULL, 'Cyber Threats and the Criminals Behind Them.', NULL);
INSERT INTO `bookfunction` VALUES (NULL, NULL, 'Cybercrime costs the global economy.', NULL);
INSERT INTO `bookfunction` VALUES (NULL, NULL, 'Darknets.', NULL);
INSERT INTO `bookfunction` VALUES (NULL, NULL, 'Don’t get hooked.', NULL);
INSERT INTO `bookfunction` VALUES (NULL, NULL, 'E-mail_Security', NULL);
INSERT INTO `bookfunction` VALUES (NULL, NULL, 'Ethical_Hacking_DDOS_Attacks', NULL);
INSERT INTO `bookfunction` VALUES (NULL, NULL, 'Ethical_Hacking_Hacker_Types', NULL);
INSERT INTO `bookfunction` VALUES (NULL, NULL, 'Ethical_Hacking_Overview', NULL);
INSERT INTO `bookfunction` VALUES (NULL, NULL, 'Ethical_Hacking_Process', NULL);
INSERT INTO `bookfunction` VALUES (NULL, NULL, 'Ethical_Hacking_Social_Engineering', NULL);
INSERT INTO `bookfunction` VALUES (NULL, NULL, 'Ethical_Hacking_Terminologies', NULL);
INSERT INTO `bookfunction` VALUES (NULL, NULL, 'Ethical_Hacking_Trojan_Attacks', NULL);
INSERT INTO `bookfunction` VALUES (NULL, NULL, 'Five ways to detect a malicious.', NULL);
INSERT INTO `bookfunction` VALUES (NULL, NULL, 'frequently-asked-questions-about-gdpr', NULL);
INSERT INTO `bookfunction` VALUES (NULL, NULL, 'Gift_of_Fire_Sara_Baase_4th_ed', NULL);
INSERT INTO `bookfunction` VALUES (NULL, NULL, 'Internet_Overview', NULL);
INSERT INTO `bookfunction` VALUES (NULL, NULL, 'IT pros face increased cyberthreats.', NULL);
INSERT INTO `bookfunction` VALUES (NULL, NULL, 'Make your voice heard in the battle to preserve ne.', NULL);
INSERT INTO `bookfunction` VALUES (NULL, NULL, 'Patents_Trademarks_and_Copyrights__The_Basics___Investopedia', NULL);
INSERT INTO `bookfunction` VALUES (NULL, NULL, 'Phishing emails behind notorious ransomware scams.', NULL);
INSERT INTO `bookfunction` VALUES (NULL, NULL, 'Short Bytes.', NULL);
INSERT INTO `bookfunction` VALUES (NULL, NULL, 'Six ways to protect your small business from cyber.', NULL);
INSERT INTO `bookfunction` VALUES (NULL, NULL, 'social engineering.', NULL);
INSERT INTO `bookfunction` VALUES (NULL, NULL, 'The Difference Between Data Security and Privacy.', NULL);
INSERT INTO `bookfunction` VALUES (NULL, NULL, 'The State of Cybercrime.', NULL);
INSERT INTO `bookfunction` VALUES (NULL, NULL, 'Top 5 cybersecurity facts.', NULL);
INSERT INTO `bookfunction` VALUES (NULL, NULL, 'Acis and Galatea', NULL);
INSERT INTO `bookfunction` VALUES (NULL, NULL, 'Alpheus and Arethusa', NULL);
INSERT INTO `bookfunction` VALUES (NULL, NULL, 'Ariadne', NULL);
INSERT INTO `bookfunction` VALUES (NULL, NULL, 'Baucis and Philemon', NULL);
INSERT INTO `bookfunction` VALUES (NULL, NULL, 'Ceyx and Alcycone', NULL);
INSERT INTO `bookfunction` VALUES (NULL, NULL, 'Daphne and Apollo', NULL);
INSERT INTO `bookfunction` VALUES (NULL, NULL, 'Hero and Leander', NULL);
INSERT INTO `bookfunction` VALUES (NULL, NULL, 'ICPH 3, Plotinus', NULL);
INSERT INTO `bookfunction` VALUES (NULL, NULL, 'ICPH 3, Xenophon', NULL);
INSERT INTO `bookfunction` VALUES (NULL, NULL, 'ICPH 4, Aquinas', NULL);
INSERT INTO `bookfunction` VALUES (NULL, NULL, 'ICPH 4, Du__rer', NULL);
INSERT INTO `bookfunction` VALUES (NULL, NULL, 'ICPH 4, Pythagoras', NULL);
INSERT INTO `bookfunction` VALUES (NULL, NULL, 'ICPH 5, Grosseteste 1', NULL);
INSERT INTO `bookfunction` VALUES (NULL, NULL, 'ICPH 5, Grosseteste 2', NULL);
INSERT INTO `bookfunction` VALUES (NULL, NULL, 'ICPH 9, Hutcheson 1', NULL);
INSERT INTO `bookfunction` VALUES (NULL, NULL, 'ICPH 9, Hutcheson 2', NULL);
INSERT INTO `bookfunction` VALUES (NULL, NULL, 'Orpheus and Eurydice', NULL);
INSERT INTO `bookfunction` VALUES (NULL, NULL, 'Phaedra and Hippolytus', NULL);
INSERT INTO `bookfunction` VALUES (NULL, NULL, 'Pygmalion and Galatea', NULL);
INSERT INTO `bookfunction` VALUES ('true', 'true', 'A guide for businesses to China.', 'oFPA65BTgQ-MRSdCKjx5FUr4r4nU');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `openid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `major` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `grade` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('oFPA65BTgQ-MRSdCKjx5FUr4r4nU', 'Computer Science', 'Freshman', 'https://wx.qlogo.cn/mmopen/vi_32/MXjAmy8yHb7npzeswaYIwVEGZCGP4C7CaUgpQzTZ16mzPPVmNXWnAO7KswkquNOtnLdkmTQMNJnYEVVcRrckLQ/132', 'Tim');

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video`  (
  `picture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `video` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `major` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `grade` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/CS/p1.jpg', '1.1. 计算机早期历史-Early Computing(Av21376839,P1)', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/CS/1.1. 计算机早期历史-Early Computing(Av21376839,P1).mp4', 'Computer Science', 'Senior');
INSERT INTO `video` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/CS/p1.jpg', '10.10. 早期的编程方式-Early Programming(Av21376839,P10)', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/CS/10.10. 早期的编程方式-Early Programming(Av21376839,P10).mp4', 'Computer Science', 'Freshman');
INSERT INTO `video` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/CS/p1.jpg', '11.11. 编程语言发展史-The First Programming Lan(Av21376839,P11)', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/CS/11.11. 编程语言发展史-The First Programming Lan(Av21376839,P11).mp4', 'Computer Science', 'Junior');
INSERT INTO `video` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/CS/p1.jpg', '12.12. 编程原理-语句和函数-Programming Basics - S(Av21376839,P12)', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/CS/12.12. 编程原理-语句和函数-Programming Basics - S(Av21376839,P12).mp4', 'Computer Science', 'Sophomore');
INSERT INTO `video` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/CS/p1.jpg', '13.13. 算法入门 - Intro to Algorithms(Av21376839,P13)', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/CS/13.13. 算法入门 - Intro to Algorithms(Av21376839,P13).mp4', 'Computer Science', 'Freshman');
INSERT INTO `video` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/CS/p1.jpg', '2.2. 电子计算机-Electronic Computing(Av21376839,P2)', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/CS/2.2. 电子计算机-Electronic Computing(Av21376839,P2).mp4', 'Computer Science', 'Sophomore');
INSERT INTO `video` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/CS/p1.jpg', '3.3. 布尔逻辑 和 逻辑门-Boolean Logic - Logic Ga(Av21376839,P3)', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/CS/3.3. 布尔逻辑 和 逻辑门-Boolean Logic - Logic Ga(Av21376839,P3).mp4', 'Computer Science', 'Junior');
INSERT INTO `video` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/CS/p1.jpg', '4.4. 二进制-Representing Numbers and Letter(Av21376839,P4)', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/CS/4.4. 二进制-Representing Numbers and Letter(Av21376839,P4).mp4', 'Computer Science', 'Senior');
INSERT INTO `video` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/CS/p1.jpg', '5.5. 算术逻辑单元-How Computers Calculate-the (Av21376839,P5)', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/CS/5.5. 算术逻辑单元-How Computers Calculate-the (Av21376839,P5).mp4', 'Computer Science', 'Junior');
INSERT INTO `video` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/CS/p1.jpg', '6.6. 寄存器 - 内存-Registers and RAM(Av21376839,P6)', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/CS/6.6. 寄存器 - 内存-Registers and RAM(Av21376839,P6).mp4', 'Computer Science', 'Senior');
INSERT INTO `video` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/CS/p1.jpg', '7.7. 中央处理器(CPU)-The Central Processing U(Av21376839,P7)', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/CS/7.7. 中央处理器(CPU)-The Central Processing U(Av21376839,P7).mp4', 'Computer Science', 'Junior');
INSERT INTO `video` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/CS/p1.jpg', '8.8. 指令和程序-Instructions - Programs(Av21376839,P8)', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/CS/8.8. 指令和程序-Instructions - Programs(Av21376839,P8).mp4', 'Computer Science', 'Sophomore');
INSERT INTO `video` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/CS/p1.jpg', '9.9. 高级CPU设计-Advanced CPU Design(Av21376839,P9)', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/CS/9.9. 高级CPU设计-Advanced CPU Design(Av21376839,P9).mp4', 'Computer Science', 'Senior');
INSERT INTO `video` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/EC/p1.jpg', '1.0. 预告(Av20624185,P1)', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/EC/1.0. 预告(Av20624185,P1).mp4', 'Economy', 'Senior');
INSERT INTO `video` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/EC/p1.jpg', '10.9.对照试验(Av20624185,P10)', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/EC/10.9.对照试验(Av20624185,P10).mp4', 'Economy', 'Freshman');
INSERT INTO `video` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/EC/p1.jpg', '11.10.抽样方法与统计误差(Av20624185,P11)', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/EC/11.10.抽样方法与统计误差(Av20624185,P11).mp4', 'Economy', 'Freshman');
INSERT INTO `video` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/EC/p1.jpg', '12.11.科普数据（尝鲜）(Av20624185,P12)', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/EC/12.11.科普数据（尝鲜）(Av20624185,P12).mp4', 'Economy', 'Junior');
INSERT INTO `video` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/EC/p1.jpg', '2.1. 什么是统计学(Av20624185,P2)', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/EC/2.1. 什么是统计学(Av20624185,P2).mp4', 'Economy', 'Sophomore');
INSERT INTO `video` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/EC/p1.jpg', '3.2. 数学思维(Av20624185,P3)', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/EC/3.2. 数学思维(Av20624185,P3).mp4', 'Economy', 'Senior');
INSERT INTO `video` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/EC/p1.jpg', '4.3. 数据的集中趋势(Av20624185,P4)', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/EC/4.3. 数据的集中趋势(Av20624185,P4).mp4', 'Economy', 'Sophomore');
INSERT INTO `video` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/EC/p1.jpg', '5.4. 数据的离散趋势(Av20624185,P5)', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/EC/5.4. 数据的离散趋势(Av20624185,P5).mp4', 'Economy', 'Junior');
INSERT INTO `video` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/EC/p1.jpg', '6.5. 数据可视化I(Av20624185,P6)', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/EC/6.5. 数据可视化I(Av20624185,P6).mp4', 'Economy', 'Junior');
INSERT INTO `video` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/EC/p1.jpg', '7.6.数据可视化II(Av20624185,P7)', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/EC/7.6.数据可视化II(Av20624185,P7).mp4', 'Economy', 'Senior');
INSERT INTO `video` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/EC/p1.jpg', '8.7.数据的分布(Av20624185,P8)', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/EC/8.7.数据的分布(Av20624185,P8).mp4', 'Economy', 'Freshman');
INSERT INTO `video` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/EC/p1.jpg', '9.8.相关≠因果(Av20624185,P9)', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/EC/9.8.相关≠因果(Av20624185,P9).mp4', 'Economy', 'Freshman');
INSERT INTO `video` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/Ph/p1.jpg', '10.9. 安瑟伦，与论证上帝(Av13762839,P10)', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/Ph/10.9. 安瑟伦，与论证上帝(Av13762839,P10).mp4', 'Philosophy', 'Senior');
INSERT INTO `video` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/Ph/p1.jpg', '11.10. 阿奎纳与论证宇宙(Av13762839,P11)', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/Ph/11.10. 阿奎纳与论证宇宙(Av13762839,P11).mp4', 'Philosophy', 'Freshman');
INSERT INTO `video` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/Ph/p1.jpg', '12.11. 智慧设计(Av13762839,P12)', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/Ph/12.11. 智慧设计(Av13762839,P12).mp4', 'Philosophy', 'Freshman');
INSERT INTO `video` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/Ph/p1.jpg', '13.12. 上帝是什么样子？(Av13762839,P13)', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/Ph/13.12. 上帝是什么样子？(Av13762839,P13).mp4', 'Philosophy', 'Junior');
INSERT INTO `video` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/Ph/p1.jpg', '14.13. 恶的问题(Av13762839,P14)', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/Ph/14.13. 恶的问题(Av13762839,P14).mp4', 'Philosophy', 'Freshman');
INSERT INTO `video` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/Ph/p1.jpg', '15.14. 阴谋论与认识责任(Av13762839,P15)', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/Ph/15.14. 阴谋论与认识责任(Av13762839,P15).mp4', 'Philosophy', 'Senior');
INSERT INTO `video` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/Ph/p1.jpg', '16.15. 印第安纳·琼斯与帕斯卡的赌注(Av13762839,P16)', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/Ph/16.15. 印第安纳·琼斯与帕斯卡的赌注(Av13762839,P16).mp4', 'Philosophy', 'Senior');
INSERT INTO `video` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/Ph/p1.jpg', '17.16. 存在主义(Av13762839,P17)', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/Ph/17.16. 存在主义(Av13762839,P17).mp4', 'Philosophy', 'Sophomore');
INSERT INTO `video` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/Ph/p1.jpg', '18.17. 对死亡的看法(Av13762839,P18)', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/Ph/18.17. 对死亡的看法(Av13762839,P18).mp4', 'Philosophy', 'Senior');
INSERT INTO `video` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/Ph/p1.jpg', '19.18. 蝙蝠侠与同一性(Av13762839,P19)', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/Ph/19.18. 蝙蝠侠与同一性(Av13762839,P19).mp4', 'Philosophy', 'Senior');
INSERT INTO `video` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/Ph/p1.jpg', '2.1. 什么是哲学(Av13762839,P2)', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/Ph/2.1. 什么是哲学(Av13762839,P2).mp4', 'Philosophy', 'Junior');
INSERT INTO `video` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/Ph/p1.jpg', '20.19. 人格同一性(Av13762839,P20)', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/Ph/20.19. 人格同一性(Av13762839,P20).mp4', 'Philosophy', 'Sophomore');
INSERT INTO `video` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/Ph/p1.jpg', '21.20. 反驳人格同一性(Av13762839,P21)', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/Ph/21.20. 反驳人格同一性(Av13762839,P21).mp4', 'Philosophy', 'Sophomore');
INSERT INTO `video` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/Ph/p1.jpg', '3.2. 如何论证：哲学推理(Av13762839,P3)', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/Ph/3.2. 如何论证：哲学推理(Av13762839,P3).mp4', 'Philosophy', 'Junior');
INSERT INTO `video` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/Ph/p1.jpg', '4.3. 如何论证：归纳与溯因(Av13762839,P4)', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/Ph/4.3. 如何论证：归纳与溯因(Av13762839,P4).mp4', 'Philosophy', 'Sophomore');
INSERT INTO `video` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/Ph/p1.jpg', '5.4. 莱昂纳多·迪卡普里奥与现实的本质(Av13762839,P5)', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/Ph/5.4. 莱昂纳多·迪卡普里奥与现实的本质(Av13762839,P5).mp4', 'Philosophy', 'Senior');
INSERT INTO `video` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/Ph/p1.jpg', '6.5. 尼奥，遇见勒内·笛卡尔怀疑主义(Av13762839,P6)', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/Ph/6.5. 尼奥，遇见勒内·笛卡尔怀疑主义(Av13762839,P6).mp4', 'Philosophy', 'Freshman');
INSERT INTO `video` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/Ph/p1.jpg', '7.6. 洛克，贝克莱与经验主义(Av13762839,P7)', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/Ph/7.6. 洛克，贝克莱与经验主义(Av13762839,P7).mp4', 'Philosophy', 'Freshman');
INSERT INTO `video` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/Ph/p1.jpg', '8.7. 知识的意义(Av13762839,P8)', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/Ph/8.7. 知识的意义(Av13762839,P8).mp4', 'Philosophy', 'Freshman');
INSERT INTO `video` VALUES ('https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/Ph/p1.jpg', '9.8. 卡尔·波普尔，科学与伪科学(Av13762839,P9)', 'https://picture-1257147077.cos.ap-shanghai.myqcloud.com/video/Ph/9.8. 卡尔·波普尔，科学与伪科学(Av13762839,P9).mp4', 'Philosophy', 'Junior');

-- ----------------------------
-- Table structure for videocomment
-- ----------------------------
DROP TABLE IF EXISTS `videocomment`;
CREATE TABLE `videocomment`  (
  `openid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `bookname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for videofunction
-- ----------------------------
DROP TABLE IF EXISTS `videofunction`;
CREATE TABLE `videofunction`  (
  `good` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `save` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `videoname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `openid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of videofunction
-- ----------------------------
INSERT INTO `videofunction` VALUES (NULL, NULL, '10.9. 安瑟伦，与论证上帝(Av13762839,P10)', NULL);
INSERT INTO `videofunction` VALUES (NULL, NULL, '11.10. 阿奎纳与论证宇宙(Av13762839,P11)', NULL);
INSERT INTO `videofunction` VALUES (NULL, NULL, '12.11. 智慧设计(Av13762839,P12)', NULL);
INSERT INTO `videofunction` VALUES (NULL, NULL, '13.12. 上帝是什么样子？(Av13762839,P13)', NULL);
INSERT INTO `videofunction` VALUES (NULL, NULL, '14.13. 恶的问题(Av13762839,P14)', NULL);
INSERT INTO `videofunction` VALUES (NULL, NULL, '15.14. 阴谋论与认识责任(Av13762839,P15)', NULL);
INSERT INTO `videofunction` VALUES (NULL, NULL, '16.15. 印第安纳·琼斯与帕斯卡的赌注(Av13762839,P16)', NULL);
INSERT INTO `videofunction` VALUES (NULL, NULL, '17.16. 存在主义(Av13762839,P17)', NULL);
INSERT INTO `videofunction` VALUES (NULL, NULL, '18.17. 对死亡的看法(Av13762839,P18)', NULL);
INSERT INTO `videofunction` VALUES (NULL, NULL, '19.18. 蝙蝠侠与同一性(Av13762839,P19)', NULL);
INSERT INTO `videofunction` VALUES (NULL, NULL, '2.1. 什么是哲学(Av13762839,P2)', NULL);
INSERT INTO `videofunction` VALUES (NULL, NULL, '20.19. 人格同一性(Av13762839,P20)', NULL);
INSERT INTO `videofunction` VALUES (NULL, NULL, '21.20. 反驳人格同一性(Av13762839,P21)', NULL);
INSERT INTO `videofunction` VALUES (NULL, NULL, '3.2. 如何论证：哲学推理(Av13762839,P3)', NULL);
INSERT INTO `videofunction` VALUES (NULL, NULL, '4.3. 如何论证：归纳与溯因(Av13762839,P4)', NULL);
INSERT INTO `videofunction` VALUES (NULL, NULL, '5.4. 莱昂纳多·迪卡普里奥与现实的本质(Av13762839,P5)', NULL);
INSERT INTO `videofunction` VALUES (NULL, NULL, '6.5. 尼奥，遇见勒内·笛卡尔怀疑主义(Av13762839,P6)', NULL);
INSERT INTO `videofunction` VALUES (NULL, NULL, '7.6. 洛克，贝克莱与经验主义(Av13762839,P7)', NULL);
INSERT INTO `videofunction` VALUES (NULL, NULL, '8.7. 知识的意义(Av13762839,P8)', NULL);
INSERT INTO `videofunction` VALUES (NULL, NULL, '9.8. 卡尔·波普尔，科学与伪科学(Av13762839,P9)', NULL);
INSERT INTO `videofunction` VALUES (NULL, NULL, '1.1. 计算机早期历史-Early Computing(Av21376839,P1)', NULL);
INSERT INTO `videofunction` VALUES (NULL, NULL, '10.10. 早期的编程方式-Early Programming(Av21376839,P10)', NULL);
INSERT INTO `videofunction` VALUES (NULL, NULL, '11.11. 编程语言发展史-The First Programming Lan(Av21376839,P11)', NULL);
INSERT INTO `videofunction` VALUES (NULL, NULL, '12.12. 编程原理-语句和函数-Programming Basics - S(Av21376839,P12)', NULL);
INSERT INTO `videofunction` VALUES (NULL, NULL, '13.13. 算法入门 - Intro to Algorithms(Av21376839,P13)', NULL);
INSERT INTO `videofunction` VALUES (NULL, NULL, '2.2. 电子计算机-Electronic Computing(Av21376839,P2)', NULL);
INSERT INTO `videofunction` VALUES (NULL, NULL, '3.3. 布尔逻辑 和 逻辑门-Boolean Logic - Logic Ga(Av21376839,P3)', NULL);
INSERT INTO `videofunction` VALUES (NULL, NULL, '4.4. 二进制-Representing Numbers and Letter(Av21376839,P4)', NULL);
INSERT INTO `videofunction` VALUES (NULL, NULL, '5.5. 算术逻辑单元-How Computers Calculate-the (Av21376839,P5)', NULL);
INSERT INTO `videofunction` VALUES (NULL, NULL, '6.6. 寄存器 - 内存-Registers and RAM(Av21376839,P6)', NULL);
INSERT INTO `videofunction` VALUES (NULL, NULL, '7.7. 中央处理器(CPU)-The Central Processing U(Av21376839,P7)', NULL);
INSERT INTO `videofunction` VALUES (NULL, NULL, '8.8. 指令和程序-Instructions - Programs(Av21376839,P8)', NULL);
INSERT INTO `videofunction` VALUES (NULL, NULL, '9.9. 高级CPU设计-Advanced CPU Design(Av21376839,P9)', NULL);
INSERT INTO `videofunction` VALUES (NULL, NULL, '1.0. 预告(Av20624185,P1)', NULL);
INSERT INTO `videofunction` VALUES (NULL, NULL, '10.9.对照试验(Av20624185,P10)', NULL);
INSERT INTO `videofunction` VALUES (NULL, NULL, '11.10.抽样方法与统计误差(Av20624185,P11)', NULL);
INSERT INTO `videofunction` VALUES (NULL, NULL, '12.11.科普数据（尝鲜）(Av20624185,P12)', NULL);
INSERT INTO `videofunction` VALUES (NULL, NULL, '2.1. 什么是统计学(Av20624185,P2)', NULL);
INSERT INTO `videofunction` VALUES (NULL, NULL, '3.2. 数学思维(Av20624185,P3)', NULL);
INSERT INTO `videofunction` VALUES (NULL, NULL, '4.3. 数据的集中趋势(Av20624185,P4)', NULL);
INSERT INTO `videofunction` VALUES (NULL, NULL, '5.4. 数据的离散趋势(Av20624185,P5)', NULL);
INSERT INTO `videofunction` VALUES (NULL, NULL, '6.5. 数据可视化I(Av20624185,P6)', NULL);
INSERT INTO `videofunction` VALUES (NULL, NULL, '7.6.数据可视化II(Av20624185,P7)', NULL);
INSERT INTO `videofunction` VALUES (NULL, NULL, '8.7.数据的分布(Av20624185,P8)', NULL);
INSERT INTO `videofunction` VALUES (NULL, NULL, '9.8.相关≠因果(Av20624185,P9)', NULL);

SET FOREIGN_KEY_CHECKS = 1;
