#include <iostream>
#include <vector>
#include <string>
#include <aws/core/Aws.h>
#include <aws/s3/S3Client.h>

using namespace std;

int main()
{
    vector<string> msg{"Hello", "C++", "World", "from", "VS Code", "and the C++ extension!"};

    for (const string &word : msg)
    {
        cout << word << " ";
    }
    cout << endl;

    return 0;
}
