.class public Lcom/huawei/hms/support/api/entity/sns/internal/UserDataResp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/huawei/hms/core/aidl/IMessageEntity;


# instance fields
.field userData:Lcom/huawei/hms/support/api/entity/sns/UserData;
    .annotation runtime Lcom/huawei/hms/core/aidl/a/a;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUserData()Lcom/huawei/hms/support/api/entity/sns/UserData;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/support/api/entity/sns/internal/UserDataResp;->userData:Lcom/huawei/hms/support/api/entity/sns/UserData;

    return-object v0
.end method

.method public setUserData(Lcom/huawei/hms/support/api/entity/sns/UserData;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/support/api/entity/sns/internal/UserDataResp;->userData:Lcom/huawei/hms/support/api/entity/sns/UserData;

    return-void
.end method
