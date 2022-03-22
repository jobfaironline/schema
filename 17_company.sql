DROP TABLE IF EXISTS `company`;
CREATE TABLE `company`
(
    `id`               char(36) NOT NULL,
    `taxID`            char(15) NOT NULL,
    `name`             varchar(1000) DEFAULT NULL,
    `address`          varchar(1000) DEFAULT NULL,
    `phone`            varchar(11)   DEFAULT NULL,
    `email`            varchar(322)  DEFAULT NULL,
    `employee_max_num` int           DEFAULT NULL,
    `websiteURL`       varchar(2048) DEFAULT NULL,
    `size_id`          int           DEFAULT NULL,
    `status`           int      NOT NULL,
    `description`      text,
    `company_logo_url` varchar(2048) DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `company_taxID_uindex` (`taxID`),
    UNIQUE KEY `company_email_uindex` (`email`),
    KEY                `company_company_size_id_fk` (`size_id`),
    CONSTRAINT `company_company_size_id_fk` FOREIGN KEY (`size_id`) REFERENCES `company_size` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO dbo.company (id, taxID, name, address, phone, email, employee_max_num, websiteURL, size_id, status,
                         description, company_logo_url)
VALUES ('05e96a38-86c0-4f4b-871c-a3c6ae1152d8', '0682384867', 'Gmobile', 'HCM', '0917499917', 'mable.lesch@rau.com', 5,
        'https://google.com', 1, 0, 'With great power comes great productivity.
Apple hardware, software, and services work together to deliver a seamless experience that just works. You can start a project on Mac and finish it on iPad, use your screens side by side to extend your workspace, and even draw with Apple Pencil on your iPad or use your iPhone to make live updates on your Mac. And it’s all compatible with apps from Microsoft and Google, so your team has everything it needs to get any job done.',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png');
INSERT INTO dbo.company (id, taxID, name, address, phone, email, employee_max_num, websiteURL, size_id, status,
                         description, company_logo_url)
VALUES ('07b44e18-c265-4dba-923d-8c5e4da84c0d', '9595875360', 'An Giang Coffee', 'HCM', '0917499917',
        'von.katherine@raynor.com', 5, 'https://google.com', 1, 0, 'With great power comes great productivity.
Apple hardware, software, and services work together to deliver a seamless experience that just works. You can start a project on Mac and finish it on iPad, use your screens side by side to extend your workspace, and even draw with Apple Pencil on your iPad or use your iPhone to make live updates on your Mac. And it’s all compatible with apps from Microsoft and Google, so your team has everything it needs to get any job done.',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png');
INSERT INTO dbo.company (id, taxID, name, address, phone, email, employee_max_num, websiteURL, size_id, status,
                         description, company_logo_url)
VALUES ('0a807d71-8eaa-4010-b94b-5d1edcff9e88', '7662808384', 'Air Mekong', 'HCM', '0917499917',
        'rowland.nader@yahoo.com', 5, 'https://google.com', 1, 0, 'With great power comes great productivity.
Apple hardware, software, and services work together to deliver a seamless experience that just works. You can start a project on Mac and finish it on iPad, use your screens side by side to extend your workspace, and even draw with Apple Pencil on your iPad or use your iPhone to make live updates on your Mac. And it’s all compatible with apps from Microsoft and Google, so your team has everything it needs to get any job done.',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png');
INSERT INTO dbo.company (id, taxID, name, address, phone, email, employee_max_num, websiteURL, size_id, status,
                         description, company_logo_url)
VALUES ('0c84974b-23e6-4f25-9617-20fe5883fb6b', '5385947349', 'Bank for Investment and Development of Vietnam (BIDV)',
        'HCM', '0917499917', 'jast.brenna@zulauf.net', 5, 'https://google.com', 1, 0, 'With great power comes great productivity.
Apple hardware, software, and services work together to deliver a seamless experience that just works. You can start a project on Mac and finish it on iPad, use your screens side by side to extend your workspace, and even draw with Apple Pencil on your iPad or use your iPhone to make live updates on your Mac. And it’s all compatible with apps from Microsoft and Google, so your team has everything it needs to get any job done.',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png');
INSERT INTO dbo.company (id, taxID, name, address, phone, email, employee_max_num, websiteURL, size_id, status,
                         description, company_logo_url)
VALUES ('15f2c2e0-682d-4e9d-b9f1-f5b6285b8b76', '2809528315', 'FPT Group', 'HCM', '0917499917', 'jude34@gmail.com', 5,
        'https://google.com', 1, 0, 'With great power comes great productivity.
Apple hardware, software, and services work together to deliver a seamless experience that just works. You can start a project on Mac and finish it on iPad, use your screens side by side to extend your workspace, and even draw with Apple Pencil on your iPad or use your iPhone to make live updates on your Mac. And it’s all compatible with apps from Microsoft and Google, so your team has everything it needs to get any job done.',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png');
INSERT INTO dbo.company (id, taxID, name, address, phone, email, employee_max_num, websiteURL, size_id, status,
                         description, company_logo_url)
VALUES ('18def343-36b0-47d8-bf4d-8789f7c48cd1', '0316236745', 'KMS', 'KMS', '0917499917', 'email@kms.com', 5,
        'https://kms-technology.com', 0, 0, 'With great power comes great productivity.
Apple hardware, software, and services work together to deliver a seamless experience that just works. You can start a project on Mac and finish it on iPad, use your screens side by side to extend your workspace, and even draw with Apple Pencil on your iPad or use your iPhone to make live updates on your Mac. And it’s all compatible with apps from Microsoft and Google, so your team has everything it needs to get any job done.',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png');
INSERT INTO dbo.company (id, taxID, name, address, phone, email, employee_max_num, websiteURL, size_id, status,
                         description, company_logo_url)
VALUES ('1e925b8d-38a3-4fab-b185-29224ca838cc', '0226246699', 'ACB', 'ACB', '0917499917', 'email@acb.com.vn', 5,
        'https://online.acb.com.vn/acbib/Request?&dse_sessionId=6w6-Wz8OolDNE4FOKGEq_uX&dse_applicationId=-1&dse_pageId=1&dse_operationName=displayPageNotLoginOp&dse_errorPage=login.jsp&dse_processorState=initial&pageName=home.jsp&dse_locale=vi_VN',
        0, 0, 'With great power comes great productivity.
Apple hardware, software, and services work together to deliver a seamless experience that just works. You can start a project on Mac and finish it on iPad, use your screens side by side to extend your workspace, and even draw with Apple Pencil on your iPad or use your iPhone to make live updates on your Mac. And it’s all compatible with apps from Microsoft and Google, so your team has everything it needs to get any job done.',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png');
INSERT INTO dbo.company (id, taxID, name, address, phone, email, employee_max_num, websiteURL, size_id, status,
                         description, company_logo_url)
VALUES ('239bc566-e076-44a9-88c2-767e55ef5d46', '2661024097', 'Habeco', 'HCM', '0917499917',
        'brenden.borer@rodriguez.com', 5, 'https://google.com', 1, 0, 'With great power comes great productivity.
Apple hardware, software, and services work together to deliver a seamless experience that just works. You can start a project on Mac and finish it on iPad, use your screens side by side to extend your workspace, and even draw with Apple Pencil on your iPad or use your iPhone to make live updates on your Mac. And it’s all compatible with apps from Microsoft and Google, so your team has everything it needs to get any job done.',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png');
INSERT INTO dbo.company (id, taxID, name, address, phone, email, employee_max_num, websiteURL, size_id, status,
                         description, company_logo_url)
VALUES ('24e2a1b9-f324-4d1e-b933-3887bae79f5c', '0226246640', 'Tiki', 'Tiki', '0917499917', 'email@tiki.vn', 5,
        'http://tiki.vn', 0, 0, 'With great power comes great productivity.
Apple hardware, software, and services work together to deliver a seamless experience that just works. You can start a project on Mac and finish it on iPad, use your screens side by side to extend your workspace, and even draw with Apple Pencil on your iPad or use your iPhone to make live updates on your Mac. And it’s all compatible with apps from Microsoft and Google, so your team has everything it needs to get any job done.',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png');
INSERT INTO dbo.company (id, taxID, name, address, phone, email, employee_max_num, websiteURL, size_id, status,
                         description, company_logo_url)
VALUES ('349243fd-37ec-48ad-a498-17030a0f2c71', '1747783999', 'Binh Minh Plastic', 'HCM', '0917499917',
        'yschaefer@yahoo.com', 5, 'https://google.com', 1, 0, 'With great power comes great productivity.
Apple hardware, software, and services work together to deliver a seamless experience that just works. You can start a project on Mac and finish it on iPad, use your screens side by side to extend your workspace, and even draw with Apple Pencil on your iPad or use your iPhone to make live updates on your Mac. And it’s all compatible with apps from Microsoft and Google, so your team has everything it needs to get any job done.',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png');
INSERT INTO dbo.company (id, taxID, name, address, phone, email, employee_max_num, websiteURL, size_id, status,
                         description, company_logo_url)
VALUES ('40e8bc31-6034-4079-a113-fdb2f0d8e268', '4780114508', 'Appota Corporation', 'HCM', '0917499917',
        'strosin.julian@lemke.com', 5, 'https://google.com', 1, 0, 'With great power comes great productivity.
Apple hardware, software, and services work together to deliver a seamless experience that just works. You can start a project on Mac and finish it on iPad, use your screens side by side to extend your workspace, and even draw with Apple Pencil on your iPad or use your iPhone to make live updates on your Mac. And it’s all compatible with apps from Microsoft and Google, so your team has everything it needs to get any job done.',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png');
INSERT INTO dbo.company (id, taxID, name, address, phone, email, employee_max_num, websiteURL, size_id, status,
                         description, company_logo_url)
VALUES ('470ad461-0b08-46f7-867a-ed9cab56d72c', '2288788798', 'Bien Hoa Sugar', 'HCM', '0917499917',
        'talon96@gmail.com', 5, 'https://google.com', 1, 0, 'With great power comes great productivity.
Apple hardware, software, and services work together to deliver a seamless experience that just works. You can start a project on Mac and finish it on iPad, use your screens side by side to extend your workspace, and even draw with Apple Pencil on your iPad or use your iPhone to make live updates on your Mac. And it’s all compatible with apps from Microsoft and Google, so your team has everything it needs to get any job done.',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png');
INSERT INTO dbo.company (id, taxID, name, address, phone, email, employee_max_num, websiteURL, size_id, status,
                         description, company_logo_url)
VALUES ('6d4e3194-d377-439a-92c2-f9c30cd748e6', '0316236740', 'Test Create', 'hcm', '0999999900',
        'testcreate@email.com', 5, 'https://google.com', 3, 0, 'With great power comes great productivity.
Apple hardware, software, and services work together to deliver a seamless experience that just works. You can start a project on Mac and finish it on iPad, use your screens side by side to extend your workspace, and even draw with Apple Pencil on your iPad or use your iPhone to make live updates on your Mac. And it’s all compatible with apps from Microsoft and Google, so your team has everything it needs to get any job done.',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png');
INSERT INTO dbo.company (id, taxID, name, address, phone, email, employee_max_num, websiteURL, size_id, status,
                         description, company_logo_url)
VALUES ('7a876edf-51bf-465d-93ec-847d71045af8', '2735804955', 'Central Service Flight Company', 'HCM', '0917499917',
        'amos.bergnaum@yahoo.com', 5, 'https://google.com', 1, 0, 'With great power comes great productivity.
Apple hardware, software, and services work together to deliver a seamless experience that just works. You can start a project on Mac and finish it on iPad, use your screens side by side to extend your workspace, and even draw with Apple Pencil on your iPad or use your iPhone to make live updates on your Mac. And it’s all compatible with apps from Microsoft and Google, so your team has everything it needs to get any job done.',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png');
INSERT INTO dbo.company (id, taxID, name, address, phone, email, employee_max_num, websiteURL, size_id, status,
                         description, company_logo_url)
VALUES ('7b61a726-b1c2-43ca-81dd-0a7883d1ad14', '6681877009', 'Hai Au Paper', 'HCM', '0917499917',
        'jenkins.theron@yahoo.com', 5, 'https://google.com', 1, 0, 'With great power comes great productivity.
Apple hardware, software, and services work together to deliver a seamless experience that just works. You can start a project on Mac and finish it on iPad, use your screens side by side to extend your workspace, and even draw with Apple Pencil on your iPad or use your iPhone to make live updates on your Mac. And it’s all compatible with apps from Microsoft and Google, so your team has everything it needs to get any job done.',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png');
INSERT INTO dbo.company (id, taxID, name, address, phone, email, employee_max_num, websiteURL, size_id, status,
                         description, company_logo_url)
VALUES ('7dce8588-d055-4740-bd49-95056a9f9c35', '7721792071', 'Casumina', 'HCM', '0917499917', 'kenton71@yahoo.com', 5,
        'https://google.com', 1, 0, 'With great power comes great productivity.
Apple hardware, software, and services work together to deliver a seamless experience that just works. You can start a project on Mac and finish it on iPad, use your screens side by side to extend your workspace, and even draw with Apple Pencil on your iPad or use your iPhone to make live updates on your Mac. And it’s all compatible with apps from Microsoft and Google, so your team has everything it needs to get any job done.',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png');
INSERT INTO dbo.company (id, taxID, name, address, phone, email, employee_max_num, websiteURL, size_id, status,
                         description, company_logo_url)
VALUES ('829cf49c-2147-4c7b-a390-1c1776eb1ae6', '9801716724', 'Cuulong Fish', 'HCM', '0917499917',
        'von.sharon@yahoo.com', 5, 'https://google.com', 1, 0, 'With great power comes great productivity.
Apple hardware, software, and services work together to deliver a seamless experience that just works. You can start a project on Mac and finish it on iPad, use your screens side by side to extend your workspace, and even draw with Apple Pencil on your iPad or use your iPhone to make live updates on your Mac. And it’s all compatible with apps from Microsoft and Google, so your team has everything it needs to get any job done.',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png');
INSERT INTO dbo.company (id, taxID, name, address, phone, email, employee_max_num, websiteURL, size_id, status,
                         description, company_logo_url)
VALUES ('872fa510-3880-449e-b2c0-e05d43aeacfc', '1665921004', 'Asia Commercial Bank (ACB)', 'HCM', '0917499917',
        'wellington.kohler@hotmail.com', 5, 'https://google.com', 1, 0, 'With great power comes great productivity.
Apple hardware, software, and services work together to deliver a seamless experience that just works. You can start a project on Mac and finish it on iPad, use your screens side by side to extend your workspace, and even draw with Apple Pencil on your iPad or use your iPhone to make live updates on your Mac. And it’s all compatible with apps from Microsoft and Google, so your team has everything it needs to get any job done.',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png');
INSERT INTO dbo.company (id, taxID, name, address, phone, email, employee_max_num, websiteURL, size_id, status,
                         description, company_logo_url)
VALUES ('87331de1-9a67-4d80-acf7-4180b0f367d6', '6843631765', 'Airports Corporation of Vietnam', 'HCM', '0917499917',
        'schneider.marlon@labadie.com', 5, 'https://google.com', 1, 0, 'With great power comes great productivity.
Apple hardware, software, and services work together to deliver a seamless experience that just works. You can start a project on Mac and finish it on iPad, use your screens side by side to extend your workspace, and even draw with Apple Pencil on your iPad or use your iPhone to make live updates on your Mac. And it’s all compatible with apps from Microsoft and Google, so your team has everything it needs to get any job done.',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png');
INSERT INTO dbo.company (id, taxID, name, address, phone, email, employee_max_num, websiteURL, size_id, status,
                         description, company_logo_url)
VALUES ('8e407290-9bdb-4e12-b7d3-d1ffdd1d8479', '18002752273', 'Apple', 'Apple', '0917499917', 'email@apple.com', 5,
        'https://www.apple.com', 0, 0, 'With great power comes great productivity.
Apple hardware, software, and services work together to deliver a seamless experience that just works. You can start a project on Mac and finish it on iPad, use your screens side by side to extend your workspace, and even draw with Apple Pencil on your iPad or use your iPhone to make live updates on your Mac. And it’s all compatible with apps from Microsoft and Google, so your team has everything it needs to get any job done.',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png');
INSERT INTO dbo.company (id, taxID, name, address, phone, email, employee_max_num, websiteURL, size_id, status,
                         description, company_logo_url)
VALUES ('99abb788-1d1f-4a1d-82e8-47513d1ed9d4', '5975599672', 'Hai Ha Confectionery', 'HCM', '0917499917',
        'cynthia.herman@hotmail.com', 5, 'https://google.com', 1, 0, 'With great power comes great productivity.
Apple hardware, software, and services work together to deliver a seamless experience that just works. You can start a project on Mac and finish it on iPad, use your screens side by side to extend your workspace, and even draw with Apple Pencil on your iPad or use your iPhone to make live updates on your Mac. And it’s all compatible with apps from Microsoft and Google, so your team has everything it needs to get any job done.',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png');
INSERT INTO dbo.company (id, taxID, name, address, phone, email, employee_max_num, websiteURL, size_id, status,
                         description, company_logo_url)
VALUES ('9bc8726f-40ed-45f3-9180-8ef7ce1b7b31', '0226246645', 'Shopee', 'Shopee', '0917499917', 'email@shopee.vn', 5,
        'http://shopee.vn', 0, 0, 'With great power comes great productivity.
Apple hardware, software, and services work together to deliver a seamless experience that just works. You can start a project on Mac and finish it on iPad, use your screens side by side to extend your workspace, and even draw with Apple Pencil on your iPad or use your iPhone to make live updates on your Mac. And it’s all compatible with apps from Microsoft and Google, so your team has everything it needs to get any job done.',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png');
INSERT INTO dbo.company (id, taxID, name, address, phone, email, employee_max_num, websiteURL, size_id, status,
                         description, company_logo_url)
VALUES ('9c491229-7c1c-45c2-96af-5a7fdea2559e', '0627651876', 'Bien Viet Securities', 'HCM', '0917499917',
        'turner.gail@pagac.info', 5, 'https://google.com', 1, 0, 'With great power comes great productivity.
Apple hardware, software, and services work together to deliver a seamless experience that just works. You can start a project on Mac and finish it on iPad, use your screens side by side to extend your workspace, and even draw with Apple Pencil on your iPad or use your iPhone to make live updates on your Mac. And it’s all compatible with apps from Microsoft and Google, so your team has everything it needs to get any job done.',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png');
INSERT INTO dbo.company (id, taxID, name, address, phone, email, employee_max_num, websiteURL, size_id, status,
                         description, company_logo_url)
VALUES ('b337e89c-34f8-4a94-b8b4-ac8cfac41c26', '0316246645', 'string', 'string', '0917499917', 'email@katalon.com', 5,
        'https://google.com', 0, 0, 'With great power comes great productivity.
Apple hardware, software, and services work together to deliver a seamless experience that just works. You can start a project on Mac and finish it on iPad, use your screens side by side to extend your workspace, and even draw with Apple Pencil on your iPad or use your iPhone to make live updates on your Mac. And it’s all compatible with apps from Microsoft and Google, so your team has everything it needs to get any job done.',
        'https://d3polnwtp0nqe6.cloudfront.net/CompanyLogo/b337e89c-34f8-4a94-b8b4-ac8cfac41c26');
INSERT INTO dbo.company (id, taxID, name, address, phone, email, employee_max_num, websiteURL, size_id, status,
                         description, company_logo_url)
VALUES ('b3434860-38f0-48c2-9628-a38cae1cfb70', '0316286749', 'Samsung', 'Samsung', '0917499917',
        'khoibmse140038@fpt.edu.vn', 5, 'https://samsung.com', 1, 0, 'With great power comes great productivity.
Apple hardware, software, and services work together to deliver a seamless experience that just works. You can start a project on Mac and finish it on iPad, use your screens side by side to extend your workspace, and even draw with Apple Pencil on your iPad or use your iPhone to make live updates on your Mac. And it’s all compatible with apps from Microsoft and Google, so your team has everything it needs to get any job done.',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png');
INSERT INTO dbo.company (id, taxID, name, address, phone, email, employee_max_num, websiteURL, size_id, status,
                         description, company_logo_url)
VALUES ('c7ba2ba0-61c5-43a8-978c-920202db39f4', '1900555568', 'Co-opmart', '131 Điện Biên Phủ', '0917499917',
        'chamsockhachhang@coopmart.vn', 5, 'http://www.co-opmart.com.vn/khuyenmai/camnangmuasam.aspx', 0, 0, 'With great power comes great productivity.
Apple hardware, software, and services work together to deliver a seamless experience that just works. You can start a project on Mac and finish it on iPad, use your screens side by side to extend your workspace, and even draw with Apple Pencil on your iPad or use your iPhone to make live updates on your Mac. And it’s all compatible with apps from Microsoft and Google, so your team has everything it needs to get any job done.',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png');
INSERT INTO dbo.company (id, taxID, name, address, phone, email, employee_max_num, websiteURL, size_id, status,
                         description, company_logo_url)
VALUES ('cad7b0b9-7a0d-4ae5-90ab-6fd9cb71aa46', '6642762151', 'Bao Viet Holdings', 'HCM', '0917499917',
        'destini77@weimann.biz', 5, 'https://google.com', 1, 0, 'With great power comes great productivity.
Apple hardware, software, and services work together to deliver a seamless experience that just works. You can start a project on Mac and finish it on iPad, use your screens side by side to extend your workspace, and even draw with Apple Pencil on your iPad or use your iPhone to make live updates on your Mac. And it’s all compatible with apps from Microsoft and Google, so your team has everything it needs to get any job done.',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png');
INSERT INTO dbo.company (id, taxID, name, address, phone, email, employee_max_num, websiteURL, size_id, status,
                         description, company_logo_url)
VALUES ('ce69439c-0d1b-48ea-b805-02c5c9e8049b', '1969637067', 'Bidiphar', 'HCM', '0917499917', 'chaya72@nolan.com', 5,
        'https://google.com', 1, 0, 'With great power comes great productivity.
Apple hardware, software, and services work together to deliver a seamless experience that just works. You can start a project on Mac and finish it on iPad, use your screens side by side to extend your workspace, and even draw with Apple Pencil on your iPad or use your iPhone to make live updates on your Mac. And it’s all compatible with apps from Microsoft and Google, so your team has everything it needs to get any job done.',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png');
INSERT INTO dbo.company (id, taxID, name, address, phone, email, employee_max_num, websiteURL, size_id, status,
                         description, company_logo_url)
VALUES ('e347ce34-c8c0-4335-9439-29de524cb925', '6965109000', 'Đại Cát Tường', 'HCM', '0917499917',
        'junior.denesik@gmail.com', 5, 'https://google.com', 1, 0, 'With great power comes great productivity.
Apple hardware, software, and services work together to deliver a seamless experience that just works. You can start a project on Mac and finish it on iPad, use your screens side by side to extend your workspace, and even draw with Apple Pencil on your iPad or use your iPhone to make live updates on your Mac. And it’s all compatible with apps from Microsoft and Google, so your team has everything it needs to get any job done.',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png');
INSERT INTO dbo.company (id, taxID, name, address, phone, email, employee_max_num, websiteURL, size_id, status,
                         description, company_logo_url)
VALUES ('fe99c965-3dc7-4391-9665-1c7c72cce981', '7749382531', 'FPT Software', 'FPT Software', '0917499917',
        'email@fsoft.vn', 5, 'https://www.fpt-software.com', 1, 0, 'With great power comes great productivity.
Apple hardware, software, and services work together to deliver a seamless experience that just works. You can start a project on Mac and finish it on iPad, use your screens side by side to extend your workspace, and even draw with Apple Pencil on your iPad or use your iPhone to make live updates on your Mac. And it’s all compatible with apps from Microsoft and Google, so your team has everything it needs to get any job done.',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png');