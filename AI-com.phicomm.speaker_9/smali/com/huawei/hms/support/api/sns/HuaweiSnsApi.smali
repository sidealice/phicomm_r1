.class public interface abstract Lcom/huawei/hms/support/api/sns/HuaweiSnsApi;
.super Ljava/lang/Object;


# virtual methods
.method public abstract addFriend(Lcom/huawei/hms/api/HuaweiApiClient;JLjava/lang/String;)Lcom/huawei/hms/support/api/client/PendingResult;
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
.end method

.method public abstract getContactSelectorIntent(Lcom/huawei/hms/api/HuaweiApiClient;Z)Lcom/huawei/hms/support/api/client/PendingResult;
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
.end method

.method public abstract getFriendList(Lcom/huawei/hms/api/HuaweiApiClient;)Lcom/huawei/hms/support/api/client/PendingResult;
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
.end method

.method public abstract getFriendSelectorIntent(Lcom/huawei/hms/api/HuaweiApiClient;Z)Lcom/huawei/hms/support/api/client/PendingResult;
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
.end method

.method public abstract getGroupCreatorIntent(Lcom/huawei/hms/api/HuaweiApiClient;)Lcom/huawei/hms/support/api/client/PendingResult;
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
.end method

.method public abstract getGroupList(Lcom/huawei/hms/api/HuaweiApiClient;I)Lcom/huawei/hms/support/api/client/PendingResult;
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
.end method

.method public abstract getGroupMemList(Lcom/huawei/hms/api/HuaweiApiClient;J)Lcom/huawei/hms/support/api/client/PendingResult;
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
.end method

.method public abstract getGroupSelectorIntent(Lcom/huawei/hms/api/HuaweiApiClient;I)Lcom/huawei/hms/support/api/client/PendingResult;
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
.end method

.method public abstract getIMStatus(Lcom/huawei/hms/api/HuaweiApiClient;)Lcom/huawei/hms/support/api/client/PendingResult;
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
.end method

.method public abstract getMsgSendIntent(Lcom/huawei/hms/api/HuaweiApiClient;Lcom/huawei/hms/support/api/entity/sns/SnsMsg;IZ)Lcom/huawei/hms/support/api/client/PendingResult;
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
.end method

.method public abstract getUiIntent(Lcom/huawei/hms/api/HuaweiApiClient;IJ)Lcom/huawei/hms/support/api/client/PendingResult;
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
.end method

.method public abstract getUnreadMsgCount(Lcom/huawei/hms/api/HuaweiApiClient;)Lcom/huawei/hms/support/api/client/PendingResult;
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
.end method

.method public abstract getUserCount(Lcom/huawei/hms/api/HuaweiApiClient;J)Lcom/huawei/hms/support/api/client/PendingResult;
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
.end method

.method public abstract getUserData(Lcom/huawei/hms/api/HuaweiApiClient;J)Lcom/huawei/hms/support/api/client/PendingResult;
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
.end method

.method public abstract searchUser(Lcom/huawei/hms/api/HuaweiApiClient;Ljava/lang/String;)Lcom/huawei/hms/support/api/client/PendingResult;
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
.end method
