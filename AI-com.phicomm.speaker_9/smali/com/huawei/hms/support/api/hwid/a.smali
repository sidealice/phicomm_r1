.class final Lcom/huawei/hms/support/api/hwid/a;
.super Lcom/huawei/hms/api/Api$Options;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/huawei/hms/api/Api$Options<",
        "Lcom/huawei/hms/support/api/hwid/HuaweiIdSignInOptions;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/huawei/hms/api/Api$Options;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/huawei/hms/support/api/hwid/HuaweiIdSignInOptions;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/support/api/hwid/HuaweiIdSignInOptions;",
            ")",
            "Ljava/util/List<",
            "Lcom/huawei/hms/support/api/entity/auth/Scope;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/huawei/hms/support/api/hwid/HuaweiIdSignInOptions;->getScopeList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/huawei/hms/support/api/hwid/HuaweiIdSignInOptions;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/support/api/hwid/HuaweiIdSignInOptions;",
            ")",
            "Ljava/util/List<",
            "Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/huawei/hms/support/api/hwid/HuaweiIdSignInOptions;->getPermissionInfos()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getPermissionInfoList(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    check-cast p1, Lcom/huawei/hms/support/api/hwid/HuaweiIdSignInOptions;

    invoke-virtual {p0, p1}, Lcom/huawei/hms/support/api/hwid/a;->b(Lcom/huawei/hms/support/api/hwid/HuaweiIdSignInOptions;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getScopeList(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    check-cast p1, Lcom/huawei/hms/support/api/hwid/HuaweiIdSignInOptions;

    invoke-virtual {p0, p1}, Lcom/huawei/hms/support/api/hwid/a;->a(Lcom/huawei/hms/support/api/hwid/HuaweiIdSignInOptions;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
