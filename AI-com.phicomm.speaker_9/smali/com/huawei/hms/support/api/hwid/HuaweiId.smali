.class public Lcom/huawei/hms/support/api/hwid/HuaweiId;
.super Ljava/lang/Object;


# static fields
.field public static final HUAEWEIID_BASE_SCOPE:Lcom/huawei/hms/support/api/entity/auth/Scope;

.field public static final HuaweiIdApi:Lcom/huawei/hms/support/api/hwid/HuaweiIdApi;

.field public static final SIGN_IN_API:Lcom/huawei/hms/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/huawei/hms/api/Api<",
            "Lcom/huawei/hms/support/api/hwid/HuaweiIdSignInOptions;",
            ">;"
        }
    .end annotation
.end field

.field private static final a:Lcom/huawei/hms/api/Api$Options;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/huawei/hms/api/Api$Options<",
            "Lcom/huawei/hms/support/api/hwid/HuaweiIdSignInOptions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/huawei/hms/support/api/hwid/a;

    invoke-direct {v0}, Lcom/huawei/hms/support/api/hwid/a;-><init>()V

    sput-object v0, Lcom/huawei/hms/support/api/hwid/HuaweiId;->a:Lcom/huawei/hms/api/Api$Options;

    new-instance v0, Lcom/huawei/hms/support/api/hwid/a/a;

    invoke-direct {v0}, Lcom/huawei/hms/support/api/hwid/a/a;-><init>()V

    sput-object v0, Lcom/huawei/hms/support/api/hwid/HuaweiId;->HuaweiIdApi:Lcom/huawei/hms/support/api/hwid/HuaweiIdApi;

    new-instance v0, Lcom/huawei/hms/api/Api;

    const-string v1, "HuaweiID.API"

    sget-object v2, Lcom/huawei/hms/support/api/hwid/HuaweiId;->a:Lcom/huawei/hms/api/Api$Options;

    invoke-direct {v0, v1, v2}, Lcom/huawei/hms/api/Api;-><init>(Ljava/lang/String;Lcom/huawei/hms/api/Api$Options;)V

    sput-object v0, Lcom/huawei/hms/support/api/hwid/HuaweiId;->SIGN_IN_API:Lcom/huawei/hms/api/Api;

    new-instance v0, Lcom/huawei/hms/support/api/entity/auth/Scope;

    const-string v1, "https://www.huawei.com/auth/account/base.profile"

    invoke-direct {v0, v1}, Lcom/huawei/hms/support/api/entity/auth/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/huawei/hms/support/api/hwid/HuaweiId;->HUAEWEIID_BASE_SCOPE:Lcom/huawei/hms/support/api/entity/auth/Scope;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
