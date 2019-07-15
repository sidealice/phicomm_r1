.class public Lcom/unisound/sdk/h;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final a:Ljava/lang/String; = "ConnectionChangeReceiver"

.field private static c:Z

.field private static d:Z


# instance fields
.field private b:Lcom/unisound/sdk/bg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/unisound/sdk/h;->c:Z

    sput-boolean v0, Lcom/unisound/sdk/h;->d:Z

    return-void
.end method

.method constructor <init>(Lcom/unisound/sdk/bg;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/unisound/sdk/h;->b:Lcom/unisound/sdk/bg;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    sput-boolean p1, Lcom/unisound/sdk/h;->c:Z

    return-void
.end method

.method public a()Z
    .locals 1

    sget-boolean v0, Lcom/unisound/sdk/h;->d:Z

    return v0
.end method

.method public b(Z)V
    .locals 0

    sput-boolean p1, Lcom/unisound/sdk/h;->d:Z

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "USC"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receiver onReceive intent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v1, :cond_2

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "ConnectionChangeReceiver"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "networkinfo is null!"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-array v0, v7, [Ljava/lang/Object;

    const-string v1, "ConnectionChangeReceiver onReceive error"

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    :try_start_1
    const-string v2, "USC"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "network status changed"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/unisound/common/y;->a(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "USC"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "network isConnected"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    sget-boolean v0, Lcom/unisound/sdk/h;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/h;->b:Lcom/unisound/sdk/bg;

    invoke-virtual {v0}, Lcom/unisound/sdk/bg;->refreshActivate()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/unisound/sdk/h;->c:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
