.class public Lcom/baidu/location/a/c$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "d"
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/baidu/location/a/c;

.field private c:J


# direct methods
.method public constructor <init>(Lcom/baidu/location/a/c;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/baidu/location/a/c$d;->b:Lcom/baidu/location/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/a/c$d;->a:Ljava/util/List;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/location/a/c$d;->c:J

    iput-object p2, p0, Lcom/baidu/location/a/c$d;->a:Ljava/util/List;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/a/c$d;->c:J

    invoke-direct {p0}, Lcom/baidu/location/a/c$d;->c()V

    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/location/a/c$d;->b:Lcom/baidu/location/a/c;

    invoke-static {v1}, Lcom/baidu/location/a/c;->e(Lcom/baidu/location/a/c;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, ":"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0xc

    if-ne v1, v3, :cond_0

    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_3
    move-object v2, v0

    goto :goto_1
.end method

.method private c()V
    .locals 8

    const/4 v5, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/baidu/location/a/c$d;->a()I

    move-result v0

    if-ge v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/a/c$d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move v2, v1

    :goto_0
    if-lt v3, v1, :cond_0

    if-eqz v2, :cond_0

    move v4, v5

    move v2, v5

    :goto_1
    if-ge v4, v3, :cond_2

    iget-object v0, p0, Lcom/baidu/location/a/c$d;->a:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v6, v0, Landroid/net/wifi/ScanResult;->level:I

    iget-object v0, p0, Lcom/baidu/location/a/c$d;->a:Ljava/util/List;

    add-int/lit8 v7, v4, 0x1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    if-ge v6, v0, :cond_3

    iget-object v0, p0, Lcom/baidu/location/a/c$d;->a:Ljava/util/List;

    add-int/lit8 v2, v4, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v2, p0, Lcom/baidu/location/a/c$d;->a:Ljava/util/List;

    add-int/lit8 v6, v4, 0x1

    iget-object v7, p0, Lcom/baidu/location/a/c$d;->a:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/baidu/location/a/c$d;->a:Ljava/util/List;

    invoke-interface {v2, v4, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_2
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/a/c$d;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/a/c$d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public a(I)Ljava/lang/String;
    .locals 13

    invoke-virtual {p0}, Lcom/baidu/location/a/c$d;->a()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v6, Ljava/lang/StringBuffer;

    const/16 v0, 0x200

    invoke-direct {v6, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v0, p0, Lcom/baidu/location/a/c$d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/baidu/location/a/c$d;->b()Ljava/lang/String;

    move-result-object v8

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    move v5, v0

    :goto_1
    if-ge v5, v7, :cond_5

    iget-object v0, p0, Lcom/baidu/location/a/c$d;->a:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    if-nez v0, :cond_2

    move v0, v4

    :cond_1
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    if-eqz v1, :cond_7

    const/4 v0, 0x0

    const-string v1, "&wf="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/baidu/location/a/c$d;->a:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string v9, ":"

    const-string v10, ""

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v8, :cond_3

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v2, v3

    :cond_3
    iget-object v0, p0, Lcom/baidu/location/a/c$d;->a:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    if-gez v0, :cond_4

    neg-int v0, v0

    :cond_4
    sget-object v9, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v10, ";%d;"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v4, 0x1

    if-le v0, p1, :cond_1

    :cond_5
    if-lez v2, :cond_6

    const-string v0, "&wf_n="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_6
    if-eqz v1, :cond_8

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_7
    const-string v0, "|"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_8
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method
