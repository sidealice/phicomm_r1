.class Lcom/alibaba/mtl/log/e/l$a;
.super Ljava/lang/Object;
.source "NetworkUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mtl/log/e/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/mtl/log/e/l$1;)V
    .locals 0

    .line 149
    invoke-direct {p0}, Lcom/alibaba/mtl/log/e/l$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/alibaba/mtl/log/e/l$a;
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/alibaba/mtl/log/e/l$a;->a:Landroid/content/Context;

    return-object p0
.end method

.method public run()V
    .locals 5

    .line 160
    iget-object v0, p0, Lcom/alibaba/mtl/log/e/l$a;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 164
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/mtl/log/e/l$a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    .line 165
    iget-object v2, p0, Lcom/alibaba/mtl/log/e/l$a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 166
    invoke-static {}, Lcom/alibaba/mtl/log/e/l;->a()[Ljava/lang/String;

    move-result-object v0

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    return-void

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/alibaba/mtl/log/e/l$a;->a:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_2

    .line 171
    invoke-static {}, Lcom/alibaba/mtl/log/e/l;->a()[Ljava/lang/String;

    move-result-object v0

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    return-void

    .line 174
    :cond_2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 175
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 176
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v3, v2, :cond_3

    .line 177
    invoke-static {}, Lcom/alibaba/mtl/log/e/l;->a()[Ljava/lang/String;

    move-result-object v0

    const-string v2, "Wi-Fi"

    aput-object v2, v0, v1

    goto :goto_0

    .line 178
    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_4

    .line 179
    invoke-static {}, Lcom/alibaba/mtl/log/e/l;->a()[Ljava/lang/String;

    move-result-object v2

    const-string v4, "2G/3G"

    aput-object v4, v2, v1

    .line 180
    invoke-static {}, Lcom/alibaba/mtl/log/e/l;->a()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    :goto_0
    return-void
.end method
