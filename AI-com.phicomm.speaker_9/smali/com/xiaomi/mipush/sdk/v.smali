.class public Lcom/xiaomi/mipush/sdk/v;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/xiaomi/mipush/sdk/v;

.field private static c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/lang/Object;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/mipush/sdk/v;->d:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Landroid/content/Intent;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_8

    const-string v1, "notify_effect"

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "notify_effect"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/xiaomi/push/service/n;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, p1

    goto/16 :goto_5

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cause: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_1
    sget-object v2, Lcom/xiaomi/push/service/n;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v1, "intent_uri"

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "intent_uri"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_7

    const/4 v1, 0x1

    :try_start_1
    invoke-static {p2, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p2
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_5

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    move-object p2, v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_3

    :cond_2
    const-string v1, "class_name"

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "class_name"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, p1, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :try_start_3
    const-string p1, "intent_flag"

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "intent_flag"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cause by intent_flag: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/String;)V

    :cond_3
    :goto_1
    move-object p2, v2

    goto/16 :goto_5

    :cond_4
    sget-object p1, Lcom/xiaomi/push/service/n;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "web_uri"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string p2, "http://"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "https://"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_5
    :try_start_4
    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p2

    const-string v1, "http"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "https"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    :cond_6
    new-instance p2, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_5

    :try_start_5
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception p1

    goto :goto_2

    :catch_5
    move-exception p1

    move-object p2, v0

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_3
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    :goto_4
    move-object p2, v0

    :goto_5
    if-eqz p2, :cond_8

    const/high16 p1, 0x10000000

    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 p1, 0x10000

    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    if-eqz p0, :cond_8

    return-object p2

    :catch_6
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cause: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/String;)V

    :cond_8
    return-object v0
.end method

.method private a(Lcom/xiaomi/xmpush/thrift/ab;Z[B)Lcom/xiaomi/mipush/sdk/PushMessageHandler$a;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-static {v5, v2}, Lcom/xiaomi/mipush/sdk/t;->a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/ab;)Lorg/apache/thrift/a;

    move-result-object v5

    if-nez v5, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "receiving an un-recognized message. "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/xiaomi/xmpush/thrift/ab;->a:Lcom/xiaomi/xmpush/thrift/a;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/String;)V

    return-object v4

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "receive a message."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/b/c;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/xiaomi/mipush/sdk/c; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/apache/thrift/f; {:try_start_0 .. :try_end_0} :catch_2

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/ab;->a()Lcom/xiaomi/xmpush/thrift/a;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processing a message, action="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/b/c;->a(Ljava/lang/String;)V

    sget-object v7, Lcom/xiaomi/mipush/sdk/w;->a:[I

    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/a;->ordinal()I

    move-result v6

    aget v6, v7, v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    packed-switch v6, :pswitch_data_0

    return-object v4

    :pswitch_0
    instance-of v2, v5, Lcom/xiaomi/xmpush/thrift/x;

    if-eqz v2, :cond_b

    check-cast v5, Lcom/xiaomi/xmpush/thrift/x;

    invoke-virtual {v5}, Lcom/xiaomi/xmpush/thrift/x;->c()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/xmpush/thrift/o;->L:Lcom/xiaomi/xmpush/thrift/o;

    iget-object v3, v3, Lcom/xiaomi/xmpush/thrift/o;->N:Ljava/lang/String;

    iget-object v6, v5, Lcom/xiaomi/xmpush/thrift/x;->e:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/16 v6, 0xa

    if-eqz v3, :cond_6

    iget-wide v11, v5, Lcom/xiaomi/xmpush/thrift/x;->g:J

    cmp-long v3, v11, v9

    if-nez v3, :cond_2

    const-class v3, Lcom/xiaomi/mipush/sdk/s;

    monitor-enter v3

    :try_start_1
    iget-object v5, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/s;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/s;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/xiaomi/mipush/sdk/s;->e(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/s;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/s;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/xiaomi/mipush/sdk/s;->d(Ljava/lang/String;)V

    const-string v2, "disable_syncing"

    iget-object v5, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/s;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/s;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaomi/mipush/sdk/s;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/s;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/s;

    move-result-object v2

    const-string v5, "disable_synced"

    invoke-virtual {v2, v5}, Lcom/xiaomi/mipush/sdk/s;->f(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/b;->j(Landroid/content/Context;)V

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/b;->f(Landroid/content/Context;)V

    invoke-static {}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a()V

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/x;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/x;->b()V

    :cond_1
    monitor-exit v3

    return-object v4

    :catchall_0
    move-exception v0

    move-object v2, v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_2
    const-string v3, "disable_syncing"

    iget-object v5, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/s;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/s;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaomi/mipush/sdk/s;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-class v3, Lcom/xiaomi/mipush/sdk/s;

    monitor-enter v3

    :try_start_2
    iget-object v5, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/s;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/s;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/xiaomi/mipush/sdk/s;->e(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/s;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/s;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/xiaomi/mipush/sdk/s;->c(Ljava/lang/String;)I

    move-result v5

    if-ge v5, v6, :cond_3

    iget-object v5, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/s;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/s;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/xiaomi/mipush/sdk/s;->b(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/x;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/x;

    move-result-object v5

    invoke-virtual {v5, v7, v2}, Lcom/xiaomi/mipush/sdk/x;->a(ZLjava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v5, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/s;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/s;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/xiaomi/mipush/sdk/s;->d(Ljava/lang/String;)V

    :cond_4
    :goto_0
    monitor-exit v3

    return-object v4

    :catchall_1
    move-exception v0

    move-object v2, v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    :cond_5
    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/s;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/s;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/xiaomi/mipush/sdk/s;->d(Ljava/lang/String;)V

    return-object v4

    :cond_6
    sget-object v3, Lcom/xiaomi/xmpush/thrift/o;->M:Lcom/xiaomi/xmpush/thrift/o;

    iget-object v3, v3, Lcom/xiaomi/xmpush/thrift/o;->N:Ljava/lang/String;

    iget-object v7, v5, Lcom/xiaomi/xmpush/thrift/x;->e:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_36

    iget-wide v11, v5, Lcom/xiaomi/xmpush/thrift/x;->g:J

    cmp-long v3, v11, v9

    if-nez v3, :cond_8

    const-class v3, Lcom/xiaomi/mipush/sdk/s;

    monitor-enter v3

    :try_start_3
    iget-object v5, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/s;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/s;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/xiaomi/mipush/sdk/s;->e(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/s;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/s;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/xiaomi/mipush/sdk/s;->d(Ljava/lang/String;)V

    const-string v5, "enable_syncing"

    iget-object v6, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/mipush/sdk/s;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/s;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaomi/mipush/sdk/s;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/s;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/s;

    move-result-object v5

    const-string v6, "enable_synced"

    invoke-virtual {v5, v6}, Lcom/xiaomi/mipush/sdk/s;->f(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/s;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/s;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/xiaomi/mipush/sdk/s;->d(Ljava/lang/String;)V

    :cond_7
    monitor-exit v3

    return-object v4

    :catchall_2
    move-exception v0

    move-object v2, v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v2

    :cond_8
    const-string v3, "enable_syncing"

    iget-object v5, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/s;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/s;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaomi/mipush/sdk/s;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-class v3, Lcom/xiaomi/mipush/sdk/s;

    monitor-enter v3

    :try_start_4
    iget-object v5, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/s;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/s;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/xiaomi/mipush/sdk/s;->e(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/s;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/s;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/xiaomi/mipush/sdk/s;->c(Ljava/lang/String;)I

    move-result v5

    if-ge v5, v6, :cond_9

    iget-object v5, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/s;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/s;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/xiaomi/mipush/sdk/s;->b(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/x;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/x;

    move-result-object v5

    invoke-virtual {v5, v8, v2}, Lcom/xiaomi/mipush/sdk/x;->a(ZLjava/lang/String;)V

    goto :goto_1

    :cond_9
    iget-object v5, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/s;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/s;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/xiaomi/mipush/sdk/s;->d(Ljava/lang/String;)V

    :cond_a
    :goto_1
    monitor-exit v3

    return-object v4

    :catchall_3
    move-exception v0

    move-object v2, v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v2

    :cond_b
    instance-of v2, v5, Lcom/xiaomi/xmpush/thrift/ae;

    if-eqz v2, :cond_36

    check-cast v5, Lcom/xiaomi/xmpush/thrift/ae;

    const-string v2, "registration id expired"

    iget-object v3, v5, Lcom/xiaomi/xmpush/thrift/ae;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    sget-object v3, Lcom/xiaomi/xmpush/thrift/t;->a:Lcom/xiaomi/xmpush/thrift/t;

    invoke-static {v2, v3}, Lcom/xiaomi/mipush/sdk/b;->a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/t;)V

    return-object v4

    :cond_c
    const-string v2, "client_info_update_ok"

    iget-object v3, v5, Lcom/xiaomi/xmpush/thrift/ae;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v5}, Lcom/xiaomi/xmpush/thrift/ae;->i()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_36

    invoke-virtual {v5}, Lcom/xiaomi/xmpush/thrift/ae;->i()Ljava/util/Map;

    move-result-object v2

    const-string v3, "app_version"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-virtual {v5}, Lcom/xiaomi/xmpush/thrift/ae;->i()Ljava/util/Map;

    move-result-object v2

    const-string v3, "app_version"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/f;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/f;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/xiaomi/mipush/sdk/f;->a(Ljava/lang/String;)V

    return-object v4

    :cond_d
    const-string v2, "awake_app"

    iget-object v3, v5, Lcom/xiaomi/xmpush/thrift/ae;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v5}, Lcom/xiaomi/xmpush/thrift/ae;->i()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_36

    invoke-virtual {v5}, Lcom/xiaomi/xmpush/thrift/ae;->i()Ljava/util/Map;

    move-result-object v2

    const-string v3, "packages"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-virtual {v5}, Lcom/xiaomi/xmpush/thrift/ae;->i()Ljava/util/Map;

    move-result-object v2

    const-string v3, "packages"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/xiaomi/mipush/sdk/b;->a(Landroid/content/Context;[Ljava/lang/String;)V

    return-object v4

    :cond_e
    sget-object v2, Lcom/xiaomi/xmpush/thrift/o;->n:Lcom/xiaomi/xmpush/thrift/o;

    iget-object v2, v2, Lcom/xiaomi/xmpush/thrift/o;->N:Ljava/lang/String;

    iget-object v3, v5, Lcom/xiaomi/xmpush/thrift/ae;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    new-instance v2, Lcom/xiaomi/xmpush/thrift/ad;

    invoke-direct {v2}, Lcom/xiaomi/xmpush/thrift/ad;-><init>()V

    :try_start_5
    invoke-virtual {v5}, Lcom/xiaomi/xmpush/thrift/ae;->m()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/xmpush/thrift/aq;->a(Lorg/apache/thrift/a;[B)V

    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/push/service/j;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/j;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/xiaomi/push/service/k;->a(Lcom/xiaomi/push/service/j;Lcom/xiaomi/xmpush/thrift/ad;)V
    :try_end_5
    .catch Lorg/apache/thrift/f; {:try_start_5 .. :try_end_5} :catch_0

    return-object v4

    :catch_0
    move-exception v0

    move-object v2, v0

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/b/c;->a(Ljava/lang/Throwable;)V

    return-object v4

    :cond_f
    sget-object v2, Lcom/xiaomi/xmpush/thrift/o;->o:Lcom/xiaomi/xmpush/thrift/o;

    iget-object v2, v2, Lcom/xiaomi/xmpush/thrift/o;->N:Ljava/lang/String;

    iget-object v3, v5, Lcom/xiaomi/xmpush/thrift/ae;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    new-instance v2, Lcom/xiaomi/xmpush/thrift/ac;

    invoke-direct {v2}, Lcom/xiaomi/xmpush/thrift/ac;-><init>()V

    :try_start_6
    invoke-virtual {v5}, Lcom/xiaomi/xmpush/thrift/ae;->m()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/xmpush/thrift/aq;->a(Lorg/apache/thrift/a;[B)V

    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/push/service/j;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/j;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/xiaomi/push/service/k;->a(Lcom/xiaomi/push/service/j;Lcom/xiaomi/xmpush/thrift/ac;)V
    :try_end_6
    .catch Lorg/apache/thrift/f; {:try_start_6 .. :try_end_6} :catch_0

    return-object v4

    :cond_10
    sget-object v2, Lcom/xiaomi/xmpush/thrift/o;->w:Lcom/xiaomi/xmpush/thrift/o;

    iget-object v2, v2, Lcom/xiaomi/xmpush/thrift/o;->N:Ljava/lang/String;

    iget-object v3, v5, Lcom/xiaomi/xmpush/thrift/ae;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/xiaomi/mipush/sdk/ad;->a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/ae;)V

    return-object v4

    :cond_11
    sget-object v2, Lcom/xiaomi/xmpush/thrift/o;->x:Lcom/xiaomi/xmpush/thrift/o;

    iget-object v2, v2, Lcom/xiaomi/xmpush/thrift/o;->N:Ljava/lang/String;

    iget-object v3, v5, Lcom/xiaomi/xmpush/thrift/ae;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v2, "receive force sync notification"

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/b/c;->a(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-static {v2, v8}, Lcom/xiaomi/mipush/sdk/ad;->a(Landroid/content/Context;Z)V

    return-object v4

    :cond_12
    sget-object v2, Lcom/xiaomi/xmpush/thrift/o;->D:Lcom/xiaomi/xmpush/thrift/o;

    iget-object v2, v2, Lcom/xiaomi/xmpush/thrift/o;->N:Ljava/lang/String;

    iget-object v3, v5, Lcom/xiaomi/xmpush/thrift/ae;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/k;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/k;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/xiaomi/mipush/sdk/k;->a(Lcom/xiaomi/xmpush/thrift/ae;)V

    return-object v4

    :cond_13
    sget-object v2, Lcom/xiaomi/xmpush/thrift/o;->F:Lcom/xiaomi/xmpush/thrift/o;

    iget-object v2, v2, Lcom/xiaomi/xmpush/thrift/o;->N:Ljava/lang/String;

    iget-object v3, v5, Lcom/xiaomi/xmpush/thrift/ae;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/k;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/k;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/xiaomi/mipush/sdk/k;->b(Lcom/xiaomi/xmpush/thrift/ae;)V

    return-object v4

    :cond_14
    sget-object v2, Lcom/xiaomi/xmpush/thrift/o;->H:Lcom/xiaomi/xmpush/thrift/o;

    iget-object v2, v2, Lcom/xiaomi/xmpush/thrift/o;->N:Ljava/lang/String;

    iget-object v3, v5, Lcom/xiaomi/xmpush/thrift/ae;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/k;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/k;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/xiaomi/mipush/sdk/k;->c(Lcom/xiaomi/xmpush/thrift/ae;)V

    return-object v4

    :cond_15
    sget-object v2, Lcom/xiaomi/xmpush/thrift/o;->K:Lcom/xiaomi/xmpush/thrift/o;

    iget-object v2, v2, Lcom/xiaomi/xmpush/thrift/o;->N:Ljava/lang/String;

    iget-object v3, v5, Lcom/xiaomi/xmpush/thrift/ae;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-virtual {v5}, Lcom/xiaomi/xmpush/thrift/ae;->i()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_36

    invoke-virtual {v5}, Lcom/xiaomi/xmpush/thrift/ae;->i()Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/push/service/n;->H:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x2

    if-eqz v2, :cond_16

    invoke-virtual {v5}, Lcom/xiaomi/xmpush/thrift/ae;->i()Ljava/util/Map;

    move-result-object v2

    sget-object v6, Lcom/xiaomi/push/service/n;->H:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_16

    :try_start_7
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_1

    move v3, v2

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_16
    :goto_2
    const/4 v2, -0x1

    if-lt v3, v2, :cond_17

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/xiaomi/mipush/sdk/b;->a(Landroid/content/Context;I)V

    return-object v4

    :cond_17
    const-string v2, ""

    const-string v3, ""

    invoke-virtual {v5}, Lcom/xiaomi/xmpush/thrift/ae;->i()Ljava/util/Map;

    move-result-object v6

    sget-object v7, Lcom/xiaomi/push/service/n;->F:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-virtual {v5}, Lcom/xiaomi/xmpush/thrift/ae;->i()Ljava/util/Map;

    move-result-object v2

    sget-object v6, Lcom/xiaomi/push/service/n;->F:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_18
    invoke-virtual {v5}, Lcom/xiaomi/xmpush/thrift/ae;->i()Ljava/util/Map;

    move-result-object v6

    sget-object v7, Lcom/xiaomi/push/service/n;->G:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-virtual {v5}, Lcom/xiaomi/xmpush/thrift/ae;->i()Ljava/util/Map;

    move-result-object v3

    sget-object v5, Lcom/xiaomi/push/service/n;->G:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :cond_19
    iget-object v5, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-static {v5, v2, v3}, Lcom/xiaomi/mipush/sdk/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :pswitch_1
    check-cast v5, Lcom/xiaomi/xmpush/thrift/aa;

    invoke-virtual {v5}, Lcom/xiaomi/xmpush/thrift/aa;->e()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Lcom/xiaomi/xmpush/thrift/aa;->k()Ljava/util/List;

    move-result-object v2

    iget-wide v3, v5, Lcom/xiaomi/xmpush/thrift/aa;->g:J

    cmp-long v6, v3, v9

    if-nez v6, :cond_1f

    const-string v3, "accept-time"

    invoke-static {v11, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1b

    if-eqz v2, :cond_1b

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v7, :cond_1b

    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v3, v4, v6}, Lcom/xiaomi/mipush/sdk/b;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "00:00"

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const-string v3, "00:00"

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/f;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/f;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/xiaomi/mipush/sdk/f;->a(Z)V

    goto :goto_3

    :cond_1a
    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/f;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/f;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/xiaomi/mipush/sdk/f;->a(Z)V

    :goto_3
    const-string v3, "GMT+08"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v2}, Lcom/xiaomi/mipush/sdk/v;->a(Ljava/util/TimeZone;Ljava/util/TimeZone;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto/16 :goto_4

    :cond_1b
    const-string v3, "set-alias"

    invoke-static {v11, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1c

    if-eqz v2, :cond_1c

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1c

    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/xiaomi/mipush/sdk/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4

    :cond_1c
    const-string v3, "unset-alias"

    invoke-static {v11, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1d

    if-eqz v2, :cond_1d

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1d

    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/xiaomi/mipush/sdk/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4

    :cond_1d
    const-string v3, "set-account"

    invoke-static {v11, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1e

    if-eqz v2, :cond_1e

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1e

    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/xiaomi/mipush/sdk/b;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4

    :cond_1e
    const-string v3, "unset-account"

    invoke-static {v11, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1f

    if-eqz v2, :cond_1f

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1f

    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/xiaomi/mipush/sdk/b;->d(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1f
    :goto_4
    move-object v12, v2

    iget-wide v13, v5, Lcom/xiaomi/xmpush/thrift/aa;->g:J

    iget-object v15, v5, Lcom/xiaomi/xmpush/thrift/aa;->h:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/xiaomi/xmpush/thrift/aa;->m()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v11 .. v16}, Lcom/xiaomi/mipush/sdk/e;->a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    move-result-object v2

    return-object v2

    :pswitch_2
    check-cast v5, Lcom/xiaomi/xmpush/thrift/ap;

    iget-wide v2, v5, Lcom/xiaomi/xmpush/thrift/ap;->f:J

    cmp-long v6, v2, v9

    if-nez v6, :cond_20

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/xiaomi/xmpush/thrift/ap;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/mipush/sdk/b;->f(Landroid/content/Context;Ljava/lang/String;)V

    :cond_20
    invoke-virtual {v5}, Lcom/xiaomi/xmpush/thrift/ap;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_21

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Lcom/xiaomi/xmpush/thrift/ap;->h()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_21
    move-object v7, v4

    const-string v6, "unsubscibe-topic"

    iget-wide v8, v5, Lcom/xiaomi/xmpush/thrift/ap;->f:J

    iget-object v10, v5, Lcom/xiaomi/xmpush/thrift/ap;->g:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/xiaomi/xmpush/thrift/ap;->k()Ljava/lang/String;

    move-result-object v11

    invoke-static/range {v6 .. v11}, Lcom/xiaomi/mipush/sdk/e;->a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    move-result-object v2

    return-object v2

    :pswitch_3
    check-cast v5, Lcom/xiaomi/xmpush/thrift/al;

    iget-wide v2, v5, Lcom/xiaomi/xmpush/thrift/al;->f:J

    cmp-long v6, v2, v9

    if-nez v6, :cond_22

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/xiaomi/xmpush/thrift/al;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/mipush/sdk/b;->e(Landroid/content/Context;Ljava/lang/String;)V

    :cond_22
    invoke-virtual {v5}, Lcom/xiaomi/xmpush/thrift/al;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_23

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Lcom/xiaomi/xmpush/thrift/al;->h()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_23
    move-object v7, v4

    const-string v6, "subscribe-topic"

    iget-wide v8, v5, Lcom/xiaomi/xmpush/thrift/al;->f:J

    iget-object v10, v5, Lcom/xiaomi/xmpush/thrift/al;->g:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/xiaomi/xmpush/thrift/al;->k()Ljava/lang/String;

    move-result-object v11

    invoke-static/range {v6 .. v11}, Lcom/xiaomi/mipush/sdk/e;->a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    move-result-object v2

    return-object v2

    :pswitch_4
    check-cast v5, Lcom/xiaomi/xmpush/thrift/an;

    iget-wide v2, v5, Lcom/xiaomi/xmpush/thrift/an;->f:J

    cmp-long v5, v2, v9

    if-nez v5, :cond_24

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/f;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/f;->h()V

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/b;->e(Landroid/content/Context;)V

    :cond_24
    invoke-static {}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a()V

    return-object v4

    :pswitch_5
    check-cast v5, Lcom/xiaomi/xmpush/thrift/ag;

    iget-wide v2, v5, Lcom/xiaomi/xmpush/thrift/ag;->f:J

    cmp-long v6, v2, v9

    if-nez v6, :cond_25

    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/f;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/f;

    move-result-object v2

    iget-object v3, v5, Lcom/xiaomi/xmpush/thrift/ag;->h:Ljava/lang/String;

    iget-object v6, v5, Lcom/xiaomi/xmpush/thrift/ag;->i:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Lcom/xiaomi/mipush/sdk/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    iget-object v2, v5, Lcom/xiaomi/xmpush/thrift/ag;->h:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_26

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v5, Lcom/xiaomi/xmpush/thrift/ag;->h:Ljava/lang/String;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_26
    move-object v7, v4

    const-string v6, "register"

    iget-wide v8, v5, Lcom/xiaomi/xmpush/thrift/ag;->f:J

    iget-object v10, v5, Lcom/xiaomi/xmpush/thrift/ag;->g:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/xiaomi/mipush/sdk/e;->a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    move-result-object v2

    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/x;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/x;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/mipush/sdk/x;->e()V

    return-object v2

    :pswitch_6
    iget-object v6, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/mipush/sdk/f;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/f;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaomi/mipush/sdk/f;->l()Z

    move-result v6

    if-eqz v6, :cond_27

    if-nez v3, :cond_27

    const-string v2, "receive a message in pause state. drop it"

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/b/c;->a(Ljava/lang/String;)V

    return-object v4

    :cond_27
    check-cast v5, Lcom/xiaomi/xmpush/thrift/aj;

    invoke-virtual {v5}, Lcom/xiaomi/xmpush/thrift/aj;->l()Lcom/xiaomi/xmpush/thrift/q;

    move-result-object v6

    if-nez v6, :cond_28

    const-string v2, "receive an empty message without push content, drop it"

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/String;)V

    return-object v4

    :cond_28
    if-eqz v3, :cond_2a

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/d;->b(Lcom/xiaomi/xmpush/thrift/ab;)Z

    move-result v7

    if-eqz v7, :cond_29

    iget-object v7, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/q;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/ab;->m()Lcom/xiaomi/xmpush/thrift/r;

    move-result-object v11

    iget-object v12, v2, Lcom/xiaomi/xmpush/thrift/ab;->f:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/q;->d()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v8, v11, v12, v13}, Lcom/xiaomi/mipush/sdk/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/xmpush/thrift/r;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_29
    iget-object v7, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/q;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/ab;->m()Lcom/xiaomi/xmpush/thrift/r;

    move-result-object v11

    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/q;->d()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v8, v11, v12}, Lcom/xiaomi/mipush/sdk/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/xmpush/thrift/r;Ljava/lang/String;)V

    :cond_2a
    :goto_5
    if-nez v3, :cond_2c

    invoke-virtual {v5}, Lcom/xiaomi/xmpush/thrift/aj;->j()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2b

    iget-object v7, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/xiaomi/xmpush/thrift/aj;->j()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaomi/mipush/sdk/b;->h(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v11, v7, v9

    if-gez v11, :cond_2b

    iget-object v7, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/xiaomi/xmpush/thrift/aj;->j()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaomi/mipush/sdk/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_6

    :cond_2b
    invoke-virtual {v5}, Lcom/xiaomi/xmpush/thrift/aj;->h()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2c

    iget-object v7, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/xiaomi/xmpush/thrift/aj;->h()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaomi/mipush/sdk/b;->g(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v11, v7, v9

    if-gez v11, :cond_2c

    iget-object v7, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/xiaomi/xmpush/thrift/aj;->h()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaomi/mipush/sdk/b;->e(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2c
    :goto_6
    iget-object v7, v2, Lcom/xiaomi/xmpush/thrift/ab;->h:Lcom/xiaomi/xmpush/thrift/r;

    if-eqz v7, :cond_2d

    iget-object v7, v2, Lcom/xiaomi/xmpush/thrift/ab;->h:Lcom/xiaomi/xmpush/thrift/r;

    invoke-virtual {v7}, Lcom/xiaomi/xmpush/thrift/r;->s()Ljava/util/Map;

    move-result-object v7

    if-eqz v7, :cond_2d

    iget-object v7, v2, Lcom/xiaomi/xmpush/thrift/ab;->h:Lcom/xiaomi/xmpush/thrift/r;

    iget-object v7, v7, Lcom/xiaomi/xmpush/thrift/r;->j:Ljava/util/Map;

    const-string v8, "jobkey"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto :goto_7

    :cond_2d
    move-object v7, v4

    :goto_7
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2e

    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/q;->b()Ljava/lang/String;

    move-result-object v7

    :cond_2e
    if-nez v3, :cond_2f

    iget-object v8, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-static {v8, v7}, Lcom/xiaomi/mipush/sdk/v;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "drop a duplicate message, key="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/b/c;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_2f
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/ab;->m()Lcom/xiaomi/xmpush/thrift/r;

    move-result-object v8

    invoke-static {v5, v8, v3}, Lcom/xiaomi/mipush/sdk/e;->a(Lcom/xiaomi/xmpush/thrift/aj;Lcom/xiaomi/xmpush/thrift/r;Z)Lcom/xiaomi/mipush/sdk/MiPushMessage;

    move-result-object v8

    invoke-virtual {v8}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getPassThrough()I

    move-result v9

    if-nez v9, :cond_30

    if-nez v3, :cond_30

    invoke-virtual {v8}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getExtra()Ljava/util/Map;

    move-result-object v9

    invoke-static {v9}, Lcom/xiaomi/push/service/d;->a(Ljava/util/Map;)Z

    move-result v9

    if-eqz v9, :cond_30

    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    move-object/from16 v5, p3

    invoke-static {v3, v2, v5}, Lcom/xiaomi/push/service/d;->a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/ab;[B)Lcom/xiaomi/push/service/d$b;

    return-object v4

    :cond_30
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "receive a message, msgid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/q;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", jobkey="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/b/c;->a(Ljava/lang/String;)V

    if-eqz v3, :cond_35

    invoke-virtual {v8}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getExtra()Ljava/util/Map;

    move-result-object v7

    if-eqz v7, :cond_35

    invoke-virtual {v8}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getExtra()Ljava/util/Map;

    move-result-object v7

    const-string v9, "notify_effect"

    invoke-interface {v7, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_35

    invoke-virtual {v8}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getExtra()Ljava/util/Map;

    move-result-object v3

    const-string v5, "notify_effect"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/d;->b(Lcom/xiaomi/xmpush/thrift/ab;)Z

    move-result v7

    if-eqz v7, :cond_33

    iget-object v5, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    iget-object v2, v2, Lcom/xiaomi/xmpush/thrift/ab;->f:Ljava/lang/String;

    invoke-static {v5, v2, v3}, Lcom/xiaomi/mipush/sdk/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_31

    const-string v2, "Getting Intent fail from ignore reg message. "

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/b/c;->a(Ljava/lang/String;)V

    return-object v4

    :cond_31
    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/q;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_32

    const-string v5, "payload"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_32
    :goto_8
    iget-object v3, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-object v4

    :cond_33
    iget-object v2, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    iget-object v6, v1, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6, v3}, Lcom/xiaomi/mipush/sdk/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_34

    sget-object v3, Lcom/xiaomi/push/service/n;->c:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    const-string v3, "key_message"

    invoke-virtual {v2, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_8

    :cond_34
    return-object v4

    :cond_35
    move-object v4, v8

    :goto_9
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/ab;->m()Lcom/xiaomi/xmpush/thrift/r;

    move-result-object v6

    if-nez v6, :cond_36

    if-nez v3, :cond_36

    invoke-direct {v1, v5, v2}, Lcom/xiaomi/mipush/sdk/v;->a(Lcom/xiaomi/xmpush/thrift/aj;Lcom/xiaomi/xmpush/thrift/ab;)V

    :cond_36
    return-object v4

    :catch_2
    move-exception v0

    move-object v2, v0

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/b/c;->a(Ljava/lang/Throwable;)V

    const-string v2, "receive a message which action string is not valid. is the reg expired?"

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/String;)V

    return-object v4

    :catch_3
    move-exception v0

    move-object v3, v0

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/b/c;->a(Ljava/lang/Throwable;)V

    invoke-direct/range {p0 .. p1}, Lcom/xiaomi/mipush/sdk/v;->a(Lcom/xiaomi/xmpush/thrift/ab;)V

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/xiaomi/xmpush/thrift/ab;[B)Lcom/xiaomi/mipush/sdk/PushMessageHandler$a;
    .locals 4

    const/4 p2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/xiaomi/mipush/sdk/t;->a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/ab;)Lorg/apache/thrift/a;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "message arrived: receiving an un-recognized message. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/xiaomi/xmpush/thrift/ab;->a:Lcom/xiaomi/xmpush/thrift/a;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/String;)V

    return-object p2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message arrived: receive a message."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/b/c;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/xiaomi/mipush/sdk/c; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/thrift/f; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/ab;->a()Lcom/xiaomi/xmpush/thrift/a;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "message arrived: processing an arrived message, action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/b/c;->a(Ljava/lang/String;)V

    sget-object v2, Lcom/xiaomi/mipush/sdk/w;->a:[I

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/a;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    return-object p2

    :cond_1
    check-cast v0, Lcom/xiaomi/xmpush/thrift/aj;

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/aj;->l()Lcom/xiaomi/xmpush/thrift/q;

    move-result-object v1

    if-nez v1, :cond_2

    const-string p1, "message arrived: receive an empty message without push content, drop it"

    :goto_0
    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/String;)V

    return-object p2

    :cond_2
    iget-object v3, p1, Lcom/xiaomi/xmpush/thrift/ab;->h:Lcom/xiaomi/xmpush/thrift/r;

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/xiaomi/xmpush/thrift/ab;->h:Lcom/xiaomi/xmpush/thrift/r;

    invoke-virtual {v3}, Lcom/xiaomi/xmpush/thrift/r;->s()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object p2, p1, Lcom/xiaomi/xmpush/thrift/ab;->h:Lcom/xiaomi/xmpush/thrift/r;

    iget-object p2, p2, Lcom/xiaomi/xmpush/thrift/r;->j:Ljava/util/Map;

    const-string v3, "jobkey"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    :cond_3
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/ab;->m()Lcom/xiaomi/xmpush/thrift/r;

    move-result-object p1

    const/4 v3, 0x0

    invoke-static {v0, p1, v3}, Lcom/xiaomi/mipush/sdk/e;->a(Lcom/xiaomi/xmpush/thrift/aj;Lcom/xiaomi/xmpush/thrift/r;Z)Lcom/xiaomi/mipush/sdk/MiPushMessage;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->setArrivedMessage(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message arrived: receive a message, msgid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/q;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", jobkey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaomi/channel/commonutils/b/c;->a(Ljava/lang/String;)V

    return-object p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/b/c;->a(Ljava/lang/Throwable;)V

    const-string p1, "message arrived: receive a message which action string is not valid. is the reg expired?"

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/b/c;->a(Ljava/lang/Throwable;)V

    const-string p1, "message arrived: receive a message but decrypt failed. report when click."

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/v;
    .locals 1

    sget-object v0, Lcom/xiaomi/mipush/sdk/v;->a:Lcom/xiaomi/mipush/sdk/v;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/mipush/sdk/v;

    invoke-direct {v0, p0}, Lcom/xiaomi/mipush/sdk/v;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/mipush/sdk/v;->a:Lcom/xiaomi/mipush/sdk/v;

    :cond_0
    sget-object p0, Lcom/xiaomi/mipush/sdk/v;->a:Lcom/xiaomi/mipush/sdk/v;

    return-object p0
.end method

.method private a()V
    .locals 8

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    const-string v1, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "last_reinitialize"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    sub-long v5, v1, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/32 v5, 0x1b7740

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    sget-object v4, Lcom/xiaomi/xmpush/thrift/t;->b:Lcom/xiaomi/xmpush/thrift/t;

    invoke-static {v3, v4}, Lcom/xiaomi/mipush/sdk/b;->a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/t;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "last_reinitialize"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method private a(Lcom/xiaomi/xmpush/thrift/ab;)V
    .locals 4

    const-string v0, "receive a message but decrypt failed. report now."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/xmpush/thrift/ae;

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/ab;->m()Lcom/xiaomi/xmpush/thrift/r;

    move-result-object v1

    iget-object v1, v1, Lcom/xiaomi/xmpush/thrift/r;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/xmpush/thrift/ae;-><init>(Ljava/lang/String;Z)V

    sget-object v1, Lcom/xiaomi/xmpush/thrift/o;->u:Lcom/xiaomi/xmpush/thrift/o;

    iget-object v1, v1, Lcom/xiaomi/xmpush/thrift/o;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/ae;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ae;

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/ab;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/ae;->b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ae;

    iget-object p1, p1, Lcom/xiaomi/xmpush/thrift/ab;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/ae;->d(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ae;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, v0, Lcom/xiaomi/xmpush/thrift/ae;->h:Ljava/util/Map;

    iget-object p1, v0, Lcom/xiaomi/xmpush/thrift/ae;->h:Ljava/util/Map;

    const-string v1, "regid"

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/b;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/x;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/x;

    move-result-object p1

    sget-object v1, Lcom/xiaomi/xmpush/thrift/a;->i:Lcom/xiaomi/xmpush/thrift/a;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/xiaomi/mipush/sdk/x;->a(Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;ZLcom/xiaomi/xmpush/thrift/r;)V

    return-void
.end method

.method private a(Lcom/xiaomi/xmpush/thrift/aj;Lcom/xiaomi/xmpush/thrift/ab;)V
    .locals 4

    invoke-virtual {p2}, Lcom/xiaomi/xmpush/thrift/ab;->m()Lcom/xiaomi/xmpush/thrift/r;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/xmpush/thrift/w;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/w;-><init>()V

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/aj;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/w;->b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/w;

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/aj;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/w;->a(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/w;

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/aj;->l()Lcom/xiaomi/xmpush/thrift/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/q;->h()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/w;->a(J)Lcom/xiaomi/xmpush/thrift/w;

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/aj;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/aj;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/w;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/w;

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/aj;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/aj;->j()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/xiaomi/xmpush/thrift/w;->d(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/w;

    :cond_1
    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/xiaomi/xmpush/thrift/aq;->a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/ab;)S

    move-result p1

    invoke-virtual {v1, p1}, Lcom/xiaomi/xmpush/thrift/w;->a(S)Lcom/xiaomi/xmpush/thrift/w;

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/x;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/x;

    move-result-object p1

    sget-object p2, Lcom/xiaomi/xmpush/thrift/a;->f:Lcom/xiaomi/xmpush/thrift/a;

    invoke-virtual {p1, v1, p2, v0}, Lcom/xiaomi/mipush/sdk/x;->a(Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;Lcom/xiaomi/xmpush/thrift/r;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7

    sget-object v0, Lcom/xiaomi/mipush/sdk/v;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/f;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/f;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/f;->j()Landroid/content/SharedPreferences;

    move-result-object p0

    sget-object v1, Lcom/xiaomi/mipush/sdk/v;->c:Ljava/util/Queue;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "pref_msg_ids"

    const-string v3, ""

    invoke-interface {p0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    sput-object v3, Lcom/xiaomi/mipush/sdk/v;->c:Ljava/util/Queue;

    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v1, v4

    sget-object v6, Lcom/xiaomi/mipush/sdk/v;->c:Ljava/util/Queue;

    invoke-interface {v6, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/xiaomi/mipush/sdk/v;->c:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :cond_1
    sget-object v1, Lcom/xiaomi/mipush/sdk/v;->c:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    sget-object p1, Lcom/xiaomi/mipush/sdk/v;->c:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result p1

    const/16 v1, 0x19

    if-le p1, v1, :cond_2

    sget-object p1, Lcom/xiaomi/mipush/sdk/v;->c:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    :cond_2
    sget-object p1, Lcom/xiaomi/mipush/sdk/v;->c:Ljava/util/Queue;

    const-string v1, ","

    invoke-static {p1, v1}, Lcom/xiaomi/channel/commonutils/g/d;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "pref_msg_ids"

    invoke-interface {p0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private b(Lcom/xiaomi/xmpush/thrift/ab;)V
    .locals 4

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/ab;->m()Lcom/xiaomi/xmpush/thrift/r;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/xmpush/thrift/w;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/w;-><init>()V

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/ab;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/w;->b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/w;

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/r;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/w;->a(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/w;

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/r;->d()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/w;->a(J)Lcom/xiaomi/xmpush/thrift/w;

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/r;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/r;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/w;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/w;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/xiaomi/xmpush/thrift/aq;->a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/ab;)S

    move-result v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/w;->a(S)Lcom/xiaomi/xmpush/thrift/w;

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/x;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/x;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/xmpush/thrift/a;->f:Lcom/xiaomi/xmpush/thrift/a;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/ab;->m()Lcom/xiaomi/xmpush/thrift/r;

    move-result-object p1

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/xiaomi/mipush/sdk/x;->a(Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;ZLcom/xiaomi/xmpush/thrift/r;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Lcom/xiaomi/mipush/sdk/PushMessageHandler$a;
    .locals 10

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive an intent from server, action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/b/c;->a(Ljava/lang/String;)V

    const-string v1, "mrt"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v2, "com.xiaomi.mipush.RECEIVE_MESSAGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_c

    const-string v0, "mipush_payload"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    const-string v2, "mipush_notified"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez v0, :cond_1

    const-string p1, "receiving an empty message, drop"

    :goto_0
    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/String;)V

    return-object v3

    :cond_1
    new-instance v2, Lcom/xiaomi/xmpush/thrift/ab;

    invoke-direct {v2}, Lcom/xiaomi/xmpush/thrift/ab;-><init>()V

    :try_start_0
    invoke-static {v2, v0}, Lcom/xiaomi/xmpush/thrift/aq;->a(Lorg/apache/thrift/a;[B)V

    iget-object v5, p0, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/f;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/f;

    move-result-object v5

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/ab;->m()Lcom/xiaomi/xmpush/thrift/r;

    move-result-object v6

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/ab;->a()Lcom/xiaomi/xmpush/thrift/a;

    move-result-object v7

    sget-object v8, Lcom/xiaomi/xmpush/thrift/a;->e:Lcom/xiaomi/xmpush/thrift/a;

    if-ne v7, v8, :cond_3

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lcom/xiaomi/mipush/sdk/f;->l()Z

    move-result v7

    if-nez v7, :cond_3

    if-nez p1, :cond_3

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/ab;->m()Lcom/xiaomi/xmpush/thrift/r;

    move-result-object v7

    const-string v8, "mrt"

    invoke-virtual {v7, v8, v1}, Lcom/xiaomi/xmpush/thrift/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/ab;->m()Lcom/xiaomi/xmpush/thrift/r;

    move-result-object v1

    const-string v7, "mat"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lcom/xiaomi/xmpush/thrift/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0, v2}, Lcom/xiaomi/mipush/sdk/v;->b(Lcom/xiaomi/xmpush/thrift/ab;)V

    :cond_3
    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/ab;->a()Lcom/xiaomi/xmpush/thrift/a;

    move-result-object v1

    sget-object v7, Lcom/xiaomi/xmpush/thrift/a;->e:Lcom/xiaomi/xmpush/thrift/a;

    if-ne v1, v7, :cond_7

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/ab;->c()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {v2}, Lcom/xiaomi/push/service/d;->b(Lcom/xiaomi/xmpush/thrift/ab;)Z

    move-result v1

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-nez v1, :cond_5

    const-string p1, "drop an un-encrypted messages. %1$s, %2$s"

    new-array v0, v8, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/ab;->j()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/r;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    const-string v1, ""

    :goto_1
    aput-object v1, v0, v7

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/b/c;->a(Ljava/lang/String;)V

    return-object v3

    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/r;->s()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/r;->s()Ljava/util/Map;

    move-result-object v1

    const-string v9, "notify_effect"

    invoke-interface {v1, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    const-string p1, "drop an un-encrypted messages. %1$s, %2$s"

    new-array v0, v8, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/ab;->j()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/r;->b()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/b/c;->a(Ljava/lang/String;)V

    return-object v3

    :cond_7
    :goto_2
    invoke-virtual {v5}, Lcom/xiaomi/mipush/sdk/f;->i()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, v2, Lcom/xiaomi/xmpush/thrift/ab;->a:Lcom/xiaomi/xmpush/thrift/a;

    sget-object v4, Lcom/xiaomi/xmpush/thrift/a;->a:Lcom/xiaomi/xmpush/thrift/a;

    if-eq v1, v4, :cond_9

    invoke-static {v2}, Lcom/xiaomi/push/service/d;->b(Lcom/xiaomi/xmpush/thrift/ab;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0, v2, p1, v0}, Lcom/xiaomi/mipush/sdk/v;->a(Lcom/xiaomi/xmpush/thrift/ab;Z[B)Lcom/xiaomi/mipush/sdk/PushMessageHandler$a;

    move-result-object p1

    return-object p1

    :cond_8
    const-string p1, "receive message without registration. need re-register!"

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/v;->a()V

    return-object v3

    :cond_9
    invoke-virtual {v5}, Lcom/xiaomi/mipush/sdk/f;->i()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v5}, Lcom/xiaomi/mipush/sdk/f;->n()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object p1, v2, Lcom/xiaomi/xmpush/thrift/ab;->a:Lcom/xiaomi/xmpush/thrift/a;

    sget-object v0, Lcom/xiaomi/xmpush/thrift/a;->b:Lcom/xiaomi/xmpush/thrift/a;

    if-ne p1, v0, :cond_a

    invoke-virtual {v5}, Lcom/xiaomi/mipush/sdk/f;->h()V

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/b;->e(Landroid/content/Context;)V

    invoke-static {}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a()V

    return-object v3

    :cond_a
    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/b;->g(Landroid/content/Context;)V

    return-object v3

    :cond_b
    invoke-direct {p0, v2, p1, v0}, Lcom/xiaomi/mipush/sdk/v;->a(Lcom/xiaomi/xmpush/thrift/ab;Z[B)Lcom/xiaomi/mipush/sdk/PushMessageHandler$a;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/thrift/f; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-object p1

    :cond_c
    const-string v1, "com.xiaomi.mipush.ERROR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    new-instance v0, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    invoke-direct {v0}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;-><init>()V

    new-instance v1, Lcom/xiaomi/xmpush/thrift/ab;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/ab;-><init>()V

    :try_start_1
    const-string v2, "mipush_payload"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-static {v1, v2}, Lcom/xiaomi/xmpush/thrift/aq;->a(Lorg/apache/thrift/a;[B)V
    :try_end_1
    .catch Lorg/apache/thrift/f; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_d
    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/ab;->a()Lcom/xiaomi/xmpush/thrift/a;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->setCommand(Ljava/lang/String;)V

    const-string v1, "mipush_error_code"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->setResultCode(J)V

    const-string v1, "mipush_error_msg"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->setReason(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive a error message. code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mipush_error_code"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", msg= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mipush_error_msg"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/String;)V

    return-object v0

    :cond_e
    const-string v1, "com.xiaomi.mipush.MESSAGE_ARRIVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "mipush_payload"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_f

    const-string p1, "message arrived: receiving an empty message, drop"

    goto/16 :goto_0

    :cond_f
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ab;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/ab;-><init>()V

    :try_start_2
    invoke-static {v0, p1}, Lcom/xiaomi/xmpush/thrift/aq;->a(Lorg/apache/thrift/a;[B)V

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/v;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/f;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/f;

    move-result-object v1

    invoke-static {v0}, Lcom/xiaomi/push/service/d;->b(Lcom/xiaomi/xmpush/thrift/ab;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string p1, "message arrived: receive ignore reg message, ignore!"

    :goto_3
    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/String;)V

    return-object v3

    :cond_10
    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/f;->i()Z

    move-result v2

    if-nez v2, :cond_11

    const-string p1, "message arrived: receive message without registration. need unregister or re-register!"

    goto :goto_3

    :cond_11
    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/f;->i()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/f;->n()Z

    move-result v1

    if-eqz v1, :cond_12

    const-string p1, "message arrived: app info is invalidated"

    goto :goto_3

    :cond_12
    invoke-direct {p0, v0, p1}, Lcom/xiaomi/mipush/sdk/v;->a(Lcom/xiaomi/xmpush/thrift/ab;[B)Lcom/xiaomi/mipush/sdk/PushMessageHandler$a;

    move-result-object p1
    :try_end_2
    .catch Lorg/apache/thrift/f; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/b/c;->a(Ljava/lang/Throwable;)V

    :cond_13
    return-object v3
.end method

.method public a(Ljava/util/TimeZone;Ljava/util/TimeZone;Ljava/util/List;)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TimeZone;",
            "Ljava/util/TimeZone;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p3

    invoke-virtual/range {p1 .. p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-wide/16 v1, 0x5a0

    invoke-virtual/range {p1 .. p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit16 v3, v3, 0x3e8

    div-int/lit8 v3, v3, 0x3c

    int-to-long v3, v3

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v12, ":"

    invoke-virtual {v8, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v5

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v8, ":"

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v9

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    const-wide/16 v16, 0x3c

    mul-long v6, v6, v16

    add-long v18, v6, v10

    sub-long v6, v18, v3

    add-long v10, v6, v1

    rem-long/2addr v10, v1

    mul-long v12, v12, v16

    add-long v6, v12, v14

    sub-long v12, v6, v3

    add-long v3, v12, v1

    rem-long/2addr v3, v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "%1$02d:%2$02d"

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/Object;

    div-long v7, v10, v16

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v5

    rem-long v10, v10, v16

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "%1$02d:%2$02d"

    new-array v2, v2, [Ljava/lang/Object;

    div-long v6, v3, v16

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v2, v5

    rem-long v3, v3, v16

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
