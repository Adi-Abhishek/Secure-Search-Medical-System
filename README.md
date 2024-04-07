# Authorised Encrypted Search for Multi-Authority Medical Databases

## Overview
This project enables secure and authorized search functionalities for medical databases across multiple authorities. It ensures that only authorized users can access sensitive medical information by employing encrypted search techniques and a multi-authority setup.

## Features
- **Encrypted Search**: All medical records are encrypted, allowing only authorized users to access the plaintext data.
- **Multi-Authority Setup**: The system operates across multiple authorities to enhance security and distribute trust.
- **Authentication & Authorization**: Users must authenticate and obtain authorization before accessing medical records, ensuring data privacy.
- **Efficient Search Algorithms**: Utilizes efficient algorithms for quick retrieval of relevant medical records while maintaining privacy.
- **Audit Trail**: Logs all access to medical records for auditing purposes, ensuring accountability.

## Abstract
This project is based on the abstract "Enabling authorized encrypted search for multi-authority medical databases." It addresses the need for secure and efficient search functionalities in medical databases, particularly across multiple authorities. By implementing encrypted search techniques and a multi-authority setup, the system ensures that sensitive medical information remains protected while allowing authorized users to access relevant data securely.

## Technologies Used
- **Encryption**: Utilizes advanced encryption techniques such as homomorphic encryption or searchable encryption to protect medical data.
- **Distributed Systems**: Implements distributed systems principles for fault tolerance and scalability.
- **Authentication & Authorization**: Employs authentication mechanisms like OAuth or JWT, and access control methods such as ACLs or RBAC.
- **Database**: Stores medical records securely using a database system like MySQL 5.0.

## Compatibility
- **Server**: Compatible with Tomcat Server 7.
- **Database**: Compatible with MySQL 5.0.
- **JDK**: Requires JDK 7.

## Usage
1. **Setup**: Clone the repository and install dependencies.
2. **Configuration**: Configure system parameters including encryption keys, access control policies, and database connections.
3. **Authentication**: Users authenticate using credentials or tokens obtained from a trusted authentication service.
4. **Authorization**: Users are authorized based on roles, permissions, or access control policies defined in the system.
5. **Search**: Perform encrypted searches across multiple authorities to retrieve relevant medical records.
6. **Access**: Authorized users access decrypted medical records based on search results.

## Contributing
Contributions are welcome! Feel free to open issues or submit pull requests for ideas, suggestions, or bug fixes.

## License
This project is licensed under the [MIT License](LICENSE).
