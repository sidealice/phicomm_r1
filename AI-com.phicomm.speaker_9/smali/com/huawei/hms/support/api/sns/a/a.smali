.class public Lcom/huawei/hms/support/api/sns/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/huawei/hms/support/api/sns/HuaweiSnsApi;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/huawei/hms/api/HuaweiApiClient;)Lcom/huawei/hms/support/api/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/api/HuaweiApiClient;",
            ")",
            "Lcom/huawei/hms/support/api/a<",
            "Lcom/huawei/hms/support/api/sns/FriendListResult;",
            "Lcom/huawei/hms/support/api/entity/sns/internal/GetFriendListResp;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/huawei/hms/support/api/sns/a/b;

    const-string v1, "sns.getfriendlist"

    new-instance v2, Lcom/huawei/hms/support/api/entity/sns/internal/SNSVoidEntity;

    invoke-direct {v2}, Lcom/huawei/hms/support/api/entity/sns/internal/SNSVoidEntity;-><init>()V

    invoke-direct {v0, p0, v1, v2}, Lcom/huawei/hms/support/api/sns/a/b;-><init>(Lcom/huawei/hms/support/api/client/ApiClient;Ljava/lang/String;Lcom/huawei/hms/core/aidl/IMessageEntity;)V

    return-object v0
.end method

.method private static a(Lcom/huawei/hms/api/HuaweiApiClient;Lcom/huawei/hms/support/api/entity/sns/internal/AddFriendReq;)Lcom/huawei/hms/support/api/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/api/HuaweiApiClient;",
            "Lcom/huawei/hms/support/api/entity/sns/internal/AddFriendReq;",
            ")",
            "Lcom/huawei/hms/support/api/a<",
            "Lcom/huawei/hms/support/api/sns/AddFriendResult;",
            "Lcom/huawei/hms/support/api/entity/sns/internal/AddFriendResp;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/huawei/hms/support/api/sns/a/f;

    const-string v1, "sns.addfriend"

    invoke-direct {v0, p0, v1, p1}, Lcom/huawei/hms/support/api/sns/a/f;-><init>(Lcom/huawei/hms/support/api/client/ApiClient;Ljava/lang/String;Lcom/huawei/hms/core/aidl/IMessageEntity;)V

    return-object v0
.end method

.method private static a(Lcom/huawei/hms/api/HuaweiApiClient;Lcom/huawei/hms/support/api/entity/sns/internal/FriendSelectorIntentReq;)Lcom/huawei/hms/support/api/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/api/HuaweiApiClient;",
            "Lcom/huawei/hms/support/api/entity/sns/internal/FriendSelectorIntentReq;",
            ")",
            "Lcom/huawei/hms/support/api/a<",
            "Lcom/huawei/hms/support/api/sns/IntentResult;",
            "Lcom/huawei/hms/support/api/entity/sns/internal/SNSIntentResp;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/huawei/hms/support/api/sns/a/n;

    const-string v1, "sns.getfriendselectorintent"

    invoke-direct {v0, p0, v1, p1}, Lcom/huawei/hms/support/api/sns/a/n;-><init>(Lcom/huawei/hms/support/api/client/ApiClient;Ljava/lang/String;Lcom/huawei/hms/core/aidl/IMessageEntity;)V

    return-object v0
.end method

.method private static a(Lcom/huawei/hms/api/HuaweiApiClient;Lcom/huawei/hms/support/api/entity/sns/internal/GetContactSelectorIntentReq;)Lcom/huawei/hms/support/api/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/api/HuaweiApiClient;",
            "Lcom/huawei/hms/support/api/entity/sns/internal/GetContactSelectorIntentReq;",
            ")",
            "Lcom/huawei/hms/support/api/a<",
            "Lcom/huawei/hms/support/api/sns/IntentResult;",
            "Lcom/huawei/hms/support/api/entity/sns/internal/SNSIntentResp;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/huawei/hms/support/api/sns/a/p;

    const-string v1, "sns.getcontactselectorintent"

    invoke-direct {v0, p0, v1, p1}, Lcom/huawei/hms/support/api/sns/a/p;-><init>(Lcom/huawei/hms/support/api/client/ApiClient;Ljava/lang/String;Lcom/huawei/hms/core/aidl/IMessageEntity;)V

    return-object v0
.end method

.method private static a(Lcom/huawei/hms/api/HuaweiApiClient;Lcom/huawei/hms/support/api/entity/sns/internal/GroupListReq;)Lcom/huawei/hms/support/api/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/api/HuaweiApiClient;",
            "Lcom/huawei/hms/support/api/entity/sns/internal/GroupListReq;",
            ")",
            "Lcom/huawei/hms/support/api/a<",
            "Lcom/huawei/hms/support/api/sns/GroupListResult;",
            "Lcom/huawei/hms/support/api/entity/sns/internal/GetGroupListResp;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/huawei/hms/support/api/sns/a/i;

    const-string v1, "sns.getgrouplist"

    invoke-direct {v0, p0, v1, p1}, Lcom/huawei/hms/support/api/sns/a/i;-><init>(Lcom/huawei/hms/support/api/client/ApiClient;Ljava/lang/String;Lcom/huawei/hms/core/aidl/IMessageEntity;)V

    return-object v0
.end method

.method private static a(Lcom/huawei/hms/api/HuaweiApiClient;Lcom/huawei/hms/support/api/entity/sns/internal/GroupMemListReq;)Lcom/huawei/hms/support/api/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/api/HuaweiApiClient;",
            "Lcom/huawei/hms/support/api/entity/sns/internal/GroupMemListReq;",
            ")",
            "Lcom/huawei/hms/support/api/a<",
            "Lcom/huawei/hms/support/api/sns/GroupMemListResult;",
            "Lcom/huawei/hms/support/api/entity/sns/internal/GetGroupMemListResp;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/huawei/hms/support/api/sns/a/j;

    const-string v1, "sns.getgroupmemlist"

    invoke-direct {v0, p0, v1, p1}, Lcom/huawei/hms/support/api/sns/a/j;-><init>(Lcom/huawei/hms/support/api/client/ApiClient;Ljava/lang/String;Lcom/huawei/hms/core/aidl/IMessageEntity;)V

    return-object v0
.end method

.method private static a(Lcom/huawei/hms/api/HuaweiApiClient;Lcom/huawei/hms/support/api/entity/sns/internal/GroupSelectorIntentReq;)Lcom/huawei/hms/support/api/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/api/HuaweiApiClient;",
            "Lcom/huawei/hms/support/api/entity/sns/internal/GroupSelectorIntentReq;",
            ")",
            "Lcom/huawei/hms/support/api/a<",
            "Lcom/huawei/hms/support/api/sns/IntentResult;",
            "Lcom/huawei/hms/support/api/entity/sns/internal/SNSIntentResp;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/huawei/hms/support/api/sns/a/o;

    const-string v1, "sns.getgroupselectorintent"

    invoke-direct {v0, p0, v1, p1}, Lcom/huawei/hms/support/api/sns/a/o;-><init>(Lcom/huawei/hms/support/api/client/ApiClient;Ljava/lang/String;Lcom/huawei/hms/core/aidl/IMessageEntity;)V

    return-object v0
.end method

.method private static a(Lcom/huawei/hms/api/HuaweiApiClient;Lcom/huawei/hms/support/api/entity/sns/internal/SNSVoidEntity;)Lcom/huawei/hms/support/api/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/api/HuaweiApiClient;",
            "Lcom/huawei/hms/support/api/entity/sns/internal/SNSVoidEntity;",
            ")",
            "Lcom/huawei/hms/support/api/a<",
            "Lcom/huawei/hms/support/api/sns/UnreadMsgCountResult;",
            "Lcom/huawei/hms/support/api/entity/sns/internal/GetUnreadMsgResp;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/huawei/hms/support/api/sns/a/l;

    const-string v1, "sns.getunreadmsgcount"

    invoke-direct {v0, p0, v1, p1}, Lcom/huawei/hms/support/api/sns/a/l;-><init>(Lcom/huawei/hms/support/api/client/ApiClient;Ljava/lang/String;Lcom/huawei/hms/core/aidl/IMessageEntity;)V

    return-object v0
.end method

.method private static a(Lcom/huawei/hms/api/HuaweiApiClient;Lcom/huawei/hms/support/api/entity/sns/internal/SnsSendMsgIntentReq;)Lcom/huawei/hms/support/api/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/api/HuaweiApiClient;",
            "Lcom/huawei/hms/support/api/entity/sns/internal/SnsSendMsgIntentReq;",
            ")",
            "Lcom/huawei/hms/support/api/a<",
            "Lcom/huawei/hms/support/api/sns/IntentResult;",
            "Lcom/huawei/hms/support/api/entity/sns/internal/SNSIntentResp;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/huawei/hms/support/api/sns/a/e;

    const-string v1, "sns.getmsgsendintent"

    invoke-direct {v0, p0, v1, p1}, Lcom/huawei/hms/support/api/sns/a/e;-><init>(Lcom/huawei/hms/support/api/client/ApiClient;Ljava/lang/String;Lcom/huawei/hms/core/aidl/IMessageEntity;)V

    return-object v0
.end method

.method private static a(Lcom/huawei/hms/api/HuaweiApiClient;Lcom/huawei/hms/support/api/entity/sns/internal/UiIntentReq;)Lcom/huawei/hms/support/api/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/api/HuaweiApiClient;",
            "Lcom/huawei/hms/support/api/entity/sns/internal/UiIntentReq;",
            ")",
            "Lcom/huawei/hms/support/api/a<",
            "Lcom/huawei/hms/support/api/sns/IntentResult;",
            "Lcom/huawei/hms/support/api/entity/sns/internal/SNSIntentResp;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/huawei/hms/support/api/sns/a/d;

    const-string v1, "sns.getuiintent"

    invoke-direct {v0, p0, v1, p1}, Lcom/huawei/hms/support/api/sns/a/d;-><init>(Lcom/huawei/hms/support/api/client/ApiClient;Ljava/lang/String;Lcom/huawei/hms/core/aidl/IMessageEntity;)V

    return-object v0
.end method

.method private static a(Lcom/huawei/hms/api/HuaweiApiClient;Lcom/huawei/hms/support/api/entity/sns/internal/UserDataReq;)Lcom/huawei/hms/support/api/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/api/HuaweiApiClient;",
            "Lcom/huawei/hms/support/api/entity/sns/internal/UserDataReq;",
            ")",
            "Lcom/huawei/hms/support/api/a<",
            "Lcom/huawei/hms/support/api/sns/UserDataResult;",
            "Lcom/huawei/hms/support/api/entity/sns/internal/UserDataResp;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/huawei/hms/support/api/sns/a/k;

    const-string v1, "sns.getuserdata"

    invoke-direct {v0, p0, v1, p1}, Lcom/huawei/hms/support/api/sns/a/k;-><init>(Lcom/huawei/hms/support/api/client/ApiClient;Ljava/lang/String;Lcom/huawei/hms/core/aidl/IMessageEntity;)V

    return-object v0
.end method

.method private static a(Lcom/huawei/hms/api/HuaweiApiClient;Lcom/huawei/hms/support/api/entity/sns/internal/UserSearchReq;)Lcom/huawei/hms/support/api/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/api/HuaweiApiClient;",
            "Lcom/huawei/hms/support/api/entity/sns/internal/UserSearchReq;",
            ")",
            "Lcom/huawei/hms/support/api/a<",
            "Lcom/huawei/hms/support/api/sns/UserSearchResult;",
            "Lcom/huawei/hms/support/api/entity/sns/internal/UserSearchResp;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/huawei/hms/support/api/sns/a/g;

    const-string v1, "sns.searchuser"

    invoke-direct {v0, p0, v1, p1}, Lcom/huawei/hms/support/api/sns/a/g;-><init>(Lcom/huawei/hms/support/api/client/ApiClient;Ljava/lang/String;Lcom/huawei/hms/core/aidl/IMessageEntity;)V

    return-object v0
.end method

.method private static a(Lcom/huawei/hms/api/HuaweiApiClient;Lcom/huawei/hms/support/api/entity/sns/internal/UserUnreadMsgReq;)Lcom/huawei/hms/support/api/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/api/HuaweiApiClient;",
            "Lcom/huawei/hms/support/api/entity/sns/internal/UserUnreadMsgReq;",
            ")",
            "Lcom/huawei/hms/support/api/a<",
            "Lcom/huawei/hms/support/api/sns/UserUnreadMsgCountResult;",
            "Lcom/huawei/hms/support/api/entity/sns/internal/GetUserUnreadMsgResp;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/huawei/hms/support/api/sns/a/m;

    const-string v1, "sns.getusercount"

    invoke-direct {v0, p0, v1, p1}, Lcom/huawei/hms/support/api/sns/a/m;-><init>(Lcom/huawei/hms/support/api/client/ApiClient;Ljava/lang/String;Lcom/huawei/hms/core/aidl/IMessageEntity;)V

    return-object v0
.end method

.method private static b(Lcom/huawei/hms/api/HuaweiApiClient;)Lcom/huawei/hms/support/api/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/api/HuaweiApiClient;",
            ")",
            "Lcom/huawei/hms/support/api/a<",
            "Lcom/huawei/hms/support/api/sns/IMStatusResult;",
            "Lcom/huawei/hms/support/api/entity/sns/internal/GetIMStatusResp;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/huawei/hms/support/api/sns/a/h;

    const-string v1, "sns.getimstatus"

    new-instance v2, Lcom/huawei/hms/support/api/entity/sns/internal/SNSVoidEntity;

    invoke-direct {v2}, Lcom/huawei/hms/support/api/entity/sns/internal/SNSVoidEntity;-><init>()V

    invoke-direct {v0, p0, v1, v2}, Lcom/huawei/hms/support/api/sns/a/h;-><init>(Lcom/huawei/hms/support/api/client/ApiClient;Ljava/lang/String;Lcom/huawei/hms/core/aidl/IMessageEntity;)V

    return-object v0
.end method

.method private static b(Lcom/huawei/hms/api/HuaweiApiClient;Lcom/huawei/hms/support/api/entity/sns/internal/SNSVoidEntity;)Lcom/huawei/hms/support/api/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/api/HuaweiApiClient;",
            "Lcom/huawei/hms/support/api/entity/sns/internal/SNSVoidEntity;",
            ")",
            "Lcom/huawei/hms/support/api/a<",
            "Lcom/huawei/hms/support/api/sns/IntentResult;",
            "Lcom/huawei/hms/support/api/entity/sns/internal/SNSIntentResp;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/huawei/hms/support/api/sns/a/c;

    const-string v1, "sns.getgroupcreatorintent"

    invoke-direct {v0, p0, v1, p1}, Lcom/huawei/hms/support/api/sns/a/c;-><init>(Lcom/huawei/hms/support/api/client/ApiClient;Ljava/lang/String;Lcom/huawei/hms/core/aidl/IMessageEntity;)V

    return-object v0
.end method


# virtual methods
.method public addFriend(Lcom/huawei/hms/api/HuaweiApiClient;JLjava/lang/String;)Lcom/huawei/hms/support/api/client/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/api/HuaweiApiClient;",
            "J",
            "Ljava/lang/String;",
            ")",
            "Lcom/huawei/hms/support/api/client/PendingResult<",
            "Lcom/huawei/hms/support/api/sns/AddFriendResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/huawei/hms/support/api/entity/sns/internal/AddFriendReq;

    invoke-direct {v0}, Lcom/huawei/hms/support/api/entity/sns/internal/AddFriendReq;-><init>()V

    invoke-virtual {v0, p2, p3}, Lcom/huawei/hms/support/api/entity/sns/internal/AddFriendReq;->setUserId(J)V

    invoke-virtual {v0, p4}, Lcom/huawei/hms/support/api/entity/sns/internal/AddFriendReq;->setRemark(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/huawei/hms/support/api/sns/a/a;->a(Lcom/huawei/hms/api/HuaweiApiClient;Lcom/huawei/hms/support/api/entity/sns/internal/AddFriendReq;)Lcom/huawei/hms/support/api/a;

    move-result-object p1

    return-object p1
.end method

.method public getContactSelectorIntent(Lcom/huawei/hms/api/HuaweiApiClient;Z)Lcom/huawei/hms/support/api/client/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/api/HuaweiApiClient;",
            "Z)",
            "Lcom/huawei/hms/support/api/client/PendingResult<",
            "Lcom/huawei/hms/support/api/sns/IntentResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/huawei/hms/support/api/entity/sns/internal/GetContactSelectorIntentReq;

    invoke-direct {v0}, Lcom/huawei/hms/support/api/entity/sns/internal/GetContactSelectorIntentReq;-><init>()V

    invoke-virtual {v0, p2}, Lcom/huawei/hms/support/api/entity/sns/internal/GetContactSelectorIntentReq;->setSingleChoice(Z)V

    invoke-static {p1, v0}, Lcom/huawei/hms/support/api/sns/a/a;->a(Lcom/huawei/hms/api/HuaweiApiClient;Lcom/huawei/hms/support/api/entity/sns/internal/GetContactSelectorIntentReq;)Lcom/huawei/hms/support/api/a;

    move-result-object p1

    return-object p1
.end method

.method public getFriendList(Lcom/huawei/hms/api/HuaweiApiClient;)Lcom/huawei/hms/support/api/client/PendingResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/api/HuaweiApiClient;",
            ")",
            "Lcom/huawei/hms/support/api/client/PendingResult<",
            "Lcom/huawei/hms/support/api/sns/FriendListResult;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/huawei/hms/support/api/sns/a/a;->a(Lcom/huawei/hms/api/HuaweiApiClient;)Lcom/huawei/hms/support/api/a;

    move-result-object p1

    return-object p1
.end method

.method public getFriendSelectorIntent(Lcom/huawei/hms/api/HuaweiApiClient;Z)Lcom/huawei/hms/support/api/client/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/api/HuaweiApiClient;",
            "Z)",
            "Lcom/huawei/hms/support/api/client/PendingResult<",
            "Lcom/huawei/hms/support/api/sns/IntentResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/huawei/hms/support/api/entity/sns/internal/FriendSelectorIntentReq;

    invoke-direct {v0}, Lcom/huawei/hms/support/api/entity/sns/internal/FriendSelectorIntentReq;-><init>()V

    invoke-virtual {v0, p2}, Lcom/huawei/hms/support/api/entity/sns/internal/FriendSelectorIntentReq;->setSingleChoice(Z)V

    invoke-static {p1, v0}, Lcom/huawei/hms/support/api/sns/a/a;->a(Lcom/huawei/hms/api/HuaweiApiClient;Lcom/huawei/hms/support/api/entity/sns/internal/FriendSelectorIntentReq;)Lcom/huawei/hms/support/api/a;

    move-result-object p1

    return-object p1
.end method

.method public getGroupCreatorIntent(Lcom/huawei/hms/api/HuaweiApiClient;)Lcom/huawei/hms/support/api/client/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/api/HuaweiApiClient;",
            ")",
            "Lcom/huawei/hms/support/api/client/PendingResult<",
            "Lcom/huawei/hms/support/api/sns/IntentResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/huawei/hms/support/api/entity/sns/internal/SNSVoidEntity;

    invoke-direct {v0}, Lcom/huawei/hms/support/api/entity/sns/internal/SNSVoidEntity;-><init>()V

    invoke-static {p1, v0}, Lcom/huawei/hms/support/api/sns/a/a;->b(Lcom/huawei/hms/api/HuaweiApiClient;Lcom/huawei/hms/support/api/entity/sns/internal/SNSVoidEntity;)Lcom/huawei/hms/support/api/a;

    move-result-object p1

    return-object p1
.end method

.method public getGroupList(Lcom/huawei/hms/api/HuaweiApiClient;I)Lcom/huawei/hms/support/api/client/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/api/HuaweiApiClient;",
            "I)",
            "Lcom/huawei/hms/support/api/client/PendingResult<",
            "Lcom/huawei/hms/support/api/sns/GroupListResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/huawei/hms/support/api/entity/sns/internal/GroupListReq;

    invoke-direct {v0}, Lcom/huawei/hms/support/api/entity/sns/internal/GroupListReq;-><init>()V

    invoke-virtual {v0, p2}, Lcom/huawei/hms/support/api/entity/sns/internal/GroupListReq;->setGroupType(I)V

    invoke-static {p1, v0}, Lcom/huawei/hms/support/api/sns/a/a;->a(Lcom/huawei/hms/api/HuaweiApiClient;Lcom/huawei/hms/support/api/entity/sns/internal/GroupListReq;)Lcom/huawei/hms/support/api/a;

    move-result-object p1

    return-object p1
.end method

.method public getGroupMemList(Lcom/huawei/hms/api/HuaweiApiClient;J)Lcom/huawei/hms/support/api/client/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/api/HuaweiApiClient;",
            "J)",
            "Lcom/huawei/hms/support/api/client/PendingResult<",
            "Lcom/huawei/hms/support/api/sns/GroupMemListResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/huawei/hms/support/api/entity/sns/internal/GroupMemListReq;

    invoke-direct {v0}, Lcom/huawei/hms/support/api/entity/sns/internal/GroupMemListReq;-><init>()V

    invoke-virtual {v0, p2, p3}, Lcom/huawei/hms/support/api/entity/sns/internal/GroupMemListReq;->setGroupId(J)V

    invoke-static {p1, v0}, Lcom/huawei/hms/support/api/sns/a/a;->a(Lcom/huawei/hms/api/HuaweiApiClient;Lcom/huawei/hms/support/api/entity/sns/internal/GroupMemListReq;)Lcom/huawei/hms/support/api/a;

    move-result-object p1

    return-object p1
.end method

.method public getGroupSelectorIntent(Lcom/huawei/hms/api/HuaweiApiClient;I)Lcom/huawei/hms/support/api/client/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/api/HuaweiApiClient;",
            "I)",
            "Lcom/huawei/hms/support/api/client/PendingResult<",
            "Lcom/huawei/hms/support/api/sns/IntentResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/huawei/hms/support/api/entity/sns/internal/GroupSelectorIntentReq;

    invoke-direct {v0}, Lcom/huawei/hms/support/api/entity/sns/internal/GroupSelectorIntentReq;-><init>()V

    invoke-virtual {v0, p2}, Lcom/huawei/hms/support/api/entity/sns/internal/GroupSelectorIntentReq;->setGroupType(I)V

    invoke-static {p1, v0}, Lcom/huawei/hms/support/api/sns/a/a;->a(Lcom/huawei/hms/api/HuaweiApiClient;Lcom/huawei/hms/support/api/entity/sns/internal/GroupSelectorIntentReq;)Lcom/huawei/hms/support/api/a;

    move-result-object p1

    return-object p1
.end method

.method public getIMStatus(Lcom/huawei/hms/api/HuaweiApiClient;)Lcom/huawei/hms/support/api/client/PendingResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/api/HuaweiApiClient;",
            ")",
            "Lcom/huawei/hms/support/api/client/PendingResult<",
            "Lcom/huawei/hms/support/api/sns/IMStatusResult;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/huawei/hms/support/api/sns/a/a;->b(Lcom/huawei/hms/api/HuaweiApiClient;)Lcom/huawei/hms/support/api/a;

    move-result-object p1

    return-object p1
.end method

.method public getMsgSendIntent(Lcom/huawei/hms/api/HuaweiApiClient;Lcom/huawei/hms/support/api/entity/sns/SnsMsg;IZ)Lcom/huawei/hms/support/api/client/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/api/HuaweiApiClient;",
            "Lcom/huawei/hms/support/api/entity/sns/SnsMsg;",
            "IZ)",
            "Lcom/huawei/hms/support/api/client/PendingResult<",
            "Lcom/huawei/hms/support/api/sns/IntentResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/huawei/hms/support/api/entity/sns/internal/SnsSendMsgIntentReq;

    invoke-direct {v0}, Lcom/huawei/hms/support/api/entity/sns/internal/SnsSendMsgIntentReq;-><init>()V

    invoke-virtual {v0, p2}, Lcom/huawei/hms/support/api/entity/sns/internal/SnsSendMsgIntentReq;->setSnsMsg(Lcom/huawei/hms/support/api/entity/sns/SnsMsg;)V

    invoke-virtual {v0, p3}, Lcom/huawei/hms/support/api/entity/sns/internal/SnsSendMsgIntentReq;->setMsgType(I)V

    invoke-virtual {p1}, Lcom/huawei/hms/api/HuaweiApiClient;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/huawei/hms/support/api/entity/sns/internal/SnsSendMsgIntentReq;->setCallerPackageName(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/huawei/hms/support/api/entity/sns/internal/SnsSendMsgIntentReq;->setNeedResult(Z)V

    invoke-static {p1, v0}, Lcom/huawei/hms/support/api/sns/a/a;->a(Lcom/huawei/hms/api/HuaweiApiClient;Lcom/huawei/hms/support/api/entity/sns/internal/SnsSendMsgIntentReq;)Lcom/huawei/hms/support/api/a;

    move-result-object p1

    return-object p1
.end method

.method public getUiIntent(Lcom/huawei/hms/api/HuaweiApiClient;IJ)Lcom/huawei/hms/support/api/client/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/api/HuaweiApiClient;",
            "IJ)",
            "Lcom/huawei/hms/support/api/client/PendingResult<",
            "Lcom/huawei/hms/support/api/sns/IntentResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/huawei/hms/support/api/entity/sns/internal/UiIntentReq;

    invoke-direct {v0}, Lcom/huawei/hms/support/api/entity/sns/internal/UiIntentReq;-><init>()V

    invoke-virtual {v0, p2}, Lcom/huawei/hms/support/api/entity/sns/internal/UiIntentReq;->setType(I)V

    invoke-virtual {v0, p3, p4}, Lcom/huawei/hms/support/api/entity/sns/internal/UiIntentReq;->setParam(J)V

    invoke-static {p1, v0}, Lcom/huawei/hms/support/api/sns/a/a;->a(Lcom/huawei/hms/api/HuaweiApiClient;Lcom/huawei/hms/support/api/entity/sns/internal/UiIntentReq;)Lcom/huawei/hms/support/api/a;

    move-result-object p1

    return-object p1
.end method

.method public getUnreadMsgCount(Lcom/huawei/hms/api/HuaweiApiClient;)Lcom/huawei/hms/support/api/client/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/api/HuaweiApiClient;",
            ")",
            "Lcom/huawei/hms/support/api/client/PendingResult<",
            "Lcom/huawei/hms/support/api/sns/UnreadMsgCountResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/huawei/hms/support/api/entity/sns/internal/SNSVoidEntity;

    invoke-direct {v0}, Lcom/huawei/hms/support/api/entity/sns/internal/SNSVoidEntity;-><init>()V

    invoke-static {p1, v0}, Lcom/huawei/hms/support/api/sns/a/a;->a(Lcom/huawei/hms/api/HuaweiApiClient;Lcom/huawei/hms/support/api/entity/sns/internal/SNSVoidEntity;)Lcom/huawei/hms/support/api/a;

    move-result-object p1

    return-object p1
.end method

.method public getUserCount(Lcom/huawei/hms/api/HuaweiApiClient;J)Lcom/huawei/hms/support/api/client/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/api/HuaweiApiClient;",
            "J)",
            "Lcom/huawei/hms/support/api/client/PendingResult<",
            "Lcom/huawei/hms/support/api/sns/UserUnreadMsgCountResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/huawei/hms/support/api/entity/sns/internal/UserUnreadMsgReq;

    invoke-direct {v0}, Lcom/huawei/hms/support/api/entity/sns/internal/UserUnreadMsgReq;-><init>()V

    invoke-virtual {v0, p2, p3}, Lcom/huawei/hms/support/api/entity/sns/internal/UserUnreadMsgReq;->setUserId(J)V

    invoke-static {p1, v0}, Lcom/huawei/hms/support/api/sns/a/a;->a(Lcom/huawei/hms/api/HuaweiApiClient;Lcom/huawei/hms/support/api/entity/sns/internal/UserUnreadMsgReq;)Lcom/huawei/hms/support/api/a;

    move-result-object p1

    return-object p1
.end method

.method public getUserData(Lcom/huawei/hms/api/HuaweiApiClient;J)Lcom/huawei/hms/support/api/client/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/api/HuaweiApiClient;",
            "J)",
            "Lcom/huawei/hms/support/api/client/PendingResult<",
            "Lcom/huawei/hms/support/api/sns/UserDataResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/huawei/hms/support/api/entity/sns/internal/UserDataReq;

    invoke-direct {v0}, Lcom/huawei/hms/support/api/entity/sns/internal/UserDataReq;-><init>()V

    invoke-virtual {v0, p2, p3}, Lcom/huawei/hms/support/api/entity/sns/internal/UserDataReq;->setUserId(J)V

    invoke-static {p1, v0}, Lcom/huawei/hms/support/api/sns/a/a;->a(Lcom/huawei/hms/api/HuaweiApiClient;Lcom/huawei/hms/support/api/entity/sns/internal/UserDataReq;)Lcom/huawei/hms/support/api/a;

    move-result-object p1

    return-object p1
.end method

.method public searchUser(Lcom/huawei/hms/api/HuaweiApiClient;Ljava/lang/String;)Lcom/huawei/hms/support/api/client/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/api/HuaweiApiClient;",
            "Ljava/lang/String;",
            ")",
            "Lcom/huawei/hms/support/api/client/PendingResult<",
            "Lcom/huawei/hms/support/api/sns/UserSearchResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/huawei/hms/support/api/entity/sns/internal/UserSearchReq;

    invoke-direct {v0}, Lcom/huawei/hms/support/api/entity/sns/internal/UserSearchReq;-><init>()V

    invoke-virtual {v0, p2}, Lcom/huawei/hms/support/api/entity/sns/internal/UserSearchReq;->setAccount(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/huawei/hms/support/api/sns/a/a;->a(Lcom/huawei/hms/api/HuaweiApiClient;Lcom/huawei/hms/support/api/entity/sns/internal/UserSearchReq;)Lcom/huawei/hms/support/api/a;

    move-result-object p1

    return-object p1
.end method
