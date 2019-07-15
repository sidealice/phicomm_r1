.class public Lcom/huawei/hms/support/api/hwid/HuaweiIdSignInOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/huawei/hms/api/Api$ApiOptions$HasOptions;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/support/api/hwid/HuaweiIdSignInOptions$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_SIGN_IN:Lcom/huawei/hms/support/api/hwid/HuaweiIdSignInOptions;

.field private static final a:Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;

.field private static final b:Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;


# instance fields
.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/huawei/hms/support/api/entity/auth/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;

    invoke-direct {v0}, Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;-><init>()V

    const-string v1, "com.huawei.android.hms.account.getUID"

    invoke-virtual {v0, v1}, Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;->setPermissionUri(Ljava/lang/String;)Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;

    move-result-object v0

    sput-object v0, Lcom/huawei/hms/support/api/hwid/HuaweiIdSignInOptions;->a:Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;

    new-instance v0, Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;

    invoke-direct {v0}, Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;-><init>()V

    const-string v1, "com.huawei.android.hms.account.getOpenID"

    invoke-virtual {v0, v1}, Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;->setPermissionUri(Ljava/lang/String;)Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;

    move-result-object v0

    sput-object v0, Lcom/huawei/hms/support/api/hwid/HuaweiIdSignInOptions;->b:Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;

    new-instance v0, Lcom/huawei/hms/support/api/hwid/HuaweiIdSignInOptions$Builder;

    invoke-direct {v0}, Lcom/huawei/hms/support/api/hwid/HuaweiIdSignInOptions$Builder;-><init>()V

    new-instance v1, Lcom/huawei/hms/support/api/entity/auth/Scope;

    const-string v2, "https://www.huawei.com/auth/account/base.profile"

    invoke-direct {v1, v2}, Lcom/huawei/hms/support/api/entity/auth/Scope;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/huawei/hms/support/api/entity/auth/Scope;

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hms/support/api/hwid/HuaweiIdSignInOptions$Builder;->requestScopes(Lcom/huawei/hms/support/api/entity/auth/Scope;[Lcom/huawei/hms/support/api/entity/auth/Scope;)Lcom/huawei/hms/support/api/hwid/HuaweiIdSignInOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/support/api/hwid/HuaweiIdSignInOptions$Builder;->requestOpenId()Lcom/huawei/hms/support/api/hwid/HuaweiIdSignInOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/support/api/hwid/HuaweiIdSignInOptions$Builder;->build()Lcom/huawei/hms/support/api/hwid/HuaweiIdSignInOptions;

    move-result-object v0

    sput-object v0, Lcom/huawei/hms/support/api/hwid/HuaweiIdSignInOptions;->DEFAULT_SIGN_IN:Lcom/huawei/hms/support/api/hwid/HuaweiIdSignInOptions;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/huawei/hms/support/api/entity/auth/Scope;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/hms/support/api/hwid/HuaweiIdSignInOptions;->c:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/huawei/hms/support/api/hwid/HuaweiIdSignInOptions;->d:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/huawei/hms/support/api/entity/auth/Scope;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0, p1}, Lcom/huawei/hms/support/api/hwid/HuaweiIdSignInOptions;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic a()Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;
    .locals 1

    sget-object v0, Lcom/huawei/hms/support/api/hwid/HuaweiIdSignInOptions;->a:Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;

    return-object v0
.end method

.method static synthetic b()Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;
    .locals 1

    sget-object v0, Lcom/huawei/hms/support/api/hwid/HuaweiIdSignInOptions;->b:Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;

    return-object v0
.end method


# virtual methods
.method public getPermissionInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/huawei/hms/support/api/hwid/HuaweiIdSignInOptions;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getScopeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/huawei/hms/support/api/entity/auth/Scope;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/huawei/hms/support/api/hwid/HuaweiIdSignInOptions;->c:Ljava/util/ArrayList;

    return-object v0
.end method
