.class public final Lcom/huawei/hms/api/internal/a;
.super Lcom/huawei/hms/api/HuaweiApiAvailability;


# static fields
.field private static final a:Lcom/huawei/hms/api/internal/a;


# instance fields
.field private b:Lcom/huawei/hms/api/internal/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/huawei/hms/api/internal/a;

    invoke-direct {v0}, Lcom/huawei/hms/api/internal/a;-><init>()V

    sput-object v0, Lcom/huawei/hms/api/internal/a;->a:Lcom/huawei/hms/api/internal/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/huawei/hms/api/HuaweiApiAvailability;-><init>()V

    return-void
.end method

.method public static a()Lcom/huawei/hms/api/internal/a;
    .locals 1

    sget-object v0, Lcom/huawei/hms/api/internal/a;->a:Lcom/huawei/hms/api/internal/a;

    return-object v0
.end method

.method private static a(Landroid/app/Activity;Ljava/lang/String;I)Z
    .locals 2

    const-string v0, "package"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "HuaweiApiAvailabilityImpl"

    const-string p2, "Failed to start package installer."

    invoke-static {p1, p2, p0}, Lcom/huawei/hms/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public isHuaweiMobileServicesAvailable(Landroid/content/Context;)I
    .locals 1

    const-string v0, "context must not be null."

    invoke-static {p1, v0}, Lcom/huawei/hms/a/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/huawei/hms/api/internal/a;->b:Lcom/huawei/hms/api/internal/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hms/api/internal/a;->b:Lcom/huawei/hms/api/internal/i;

    invoke-virtual {v0}, Lcom/huawei/hms/api/internal/i;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x12

    return p1

    :cond_0
    invoke-static {p1}, Lcom/huawei/hms/api/internal/g;->a(Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method public isUserResolvableError(I)Z
    .locals 1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :cond_0
    :pswitch_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public resolveError(Landroid/app/Activity;IILcom/huawei/hms/api/HuaweiApiAvailability$OnUpdateListener;)V
    .locals 2

    const-string v0, "activity must not be null."

    invoke-static {p1, v0}, Lcom/huawei/hms/a/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "listener must not be null."

    invoke-static {p4, v0}, Lcom/huawei/hms/a/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/huawei/hms/api/internal/a;->isHuaweiMobileServicesAvailable(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x9

    if-eq p2, v0, :cond_1

    packed-switch p2, :pswitch_data_0

    return-void

    :pswitch_0
    const-string p2, "com.huawei.hwid"

    invoke-static {p1, p2, p3}, Lcom/huawei/hms/api/internal/a;->a(Landroid/app/Activity;Ljava/lang/String;I)Z

    return-void

    :pswitch_1
    new-instance p2, Lcom/huawei/hms/api/internal/i;

    invoke-direct {p2, p1, p4, p3}, Lcom/huawei/hms/api/internal/i;-><init>(Landroid/app/Activity;Lcom/huawei/hms/api/HuaweiApiAvailability$OnUpdateListener;I)V

    iput-object p2, p0, Lcom/huawei/hms/api/internal/a;->b:Lcom/huawei/hms/api/internal/i;

    iget-object p1, p0, Lcom/huawei/hms/api/internal/a;->b:Lcom/huawei/hms/api/internal/i;

    invoke-virtual {p1}, Lcom/huawei/hms/api/internal/i;->a()V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
