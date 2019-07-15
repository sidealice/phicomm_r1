.class public Lcom/xiaomi/mipush/sdk/k;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/xiaomi/mipush/sdk/k;


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GeoFenceRegMessageProcessor."

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/k;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/k;->c:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/k;
    .locals 2

    sget-object v0, Lcom/xiaomi/mipush/sdk/k;->a:Lcom/xiaomi/mipush/sdk/k;

    if-nez v0, :cond_1

    const-class v0, Lcom/xiaomi/mipush/sdk/k;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/mipush/sdk/k;->a:Lcom/xiaomi/mipush/sdk/k;

    if-nez v1, :cond_0

    new-instance v1, Lcom/xiaomi/mipush/sdk/k;

    invoke-direct {v1, p0}, Lcom/xiaomi/mipush/sdk/k;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaomi/mipush/sdk/k;->a:Lcom/xiaomi/mipush/sdk/k;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/xiaomi/mipush/sdk/k;->a:Lcom/xiaomi/mipush/sdk/k;

    return-object p0
.end method

.method private a()Lcom/xiaomi/xmpush/thrift/s;
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/k;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/service/ar;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/ar;->a()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/xmpush/thrift/s;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/s;-><init>()V

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/xmpush/thrift/j;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/s;->a(Ljava/util/Set;)Lcom/xiaomi/xmpush/thrift/s;

    return-object v1
.end method

.method private a(Lcom/xiaomi/xmpush/thrift/j;)V
    .locals 5

    invoke-static {p1}, Lcom/xiaomi/xmpush/thrift/aq;->a(Lorg/apache/thrift/a;)[B

    move-result-object v0

    new-instance v1, Lcom/xiaomi/xmpush/thrift/ae;

    const-string v2, "-1"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/ae;-><init>(Ljava/lang/String;Z)V

    sget-object v2, Lcom/xiaomi/xmpush/thrift/o;->J:Lcom/xiaomi/xmpush/thrift/o;

    iget-object v2, v2, Lcom/xiaomi/xmpush/thrift/o;->N:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/ae;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ae;

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/ae;->a([B)Lcom/xiaomi/xmpush/thrift/ae;

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/k;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/x;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/x;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/xmpush/thrift/a;->i:Lcom/xiaomi/xmpush/thrift/a;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaomi/mipush/sdk/x;->a(Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;ZLcom/xiaomi/xmpush/thrift/r;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GeoFenceRegMessageProcessor.report package not exist geo_fencing id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/j;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/b/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/xiaomi/xmpush/thrift/j;Z)V
    .locals 5

    invoke-static {p1}, Lcom/xiaomi/xmpush/thrift/aq;->a(Lorg/apache/thrift/a;)[B

    move-result-object v0

    new-instance v1, Lcom/xiaomi/xmpush/thrift/ae;

    const-string v2, "-1"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/ae;-><init>(Ljava/lang/String;Z)V

    if-eqz p2, :cond_0

    sget-object v2, Lcom/xiaomi/xmpush/thrift/o;->E:Lcom/xiaomi/xmpush/thrift/o;

    :goto_0
    iget-object v2, v2, Lcom/xiaomi/xmpush/thrift/o;->N:Ljava/lang/String;

    goto :goto_1

    :cond_0
    sget-object v2, Lcom/xiaomi/xmpush/thrift/o;->G:Lcom/xiaomi/xmpush/thrift/o;

    goto :goto_0

    :goto_1
    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/ae;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ae;

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/ae;->a([B)Lcom/xiaomi/xmpush/thrift/ae;

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/k;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/x;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/x;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/xmpush/thrift/a;->i:Lcom/xiaomi/xmpush/thrift/a;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaomi/mipush/sdk/x;->a(Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;ZLcom/xiaomi/xmpush/thrift/r;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GeoFenceRegMessageProcessor.report geo_fencing id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/j;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    const-string p1, "geo_reg"

    goto :goto_2

    :cond_1
    const-string p1, "geo_unreg"

    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/b/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method private d(Lcom/xiaomi/xmpush/thrift/ae;)Lcom/xiaomi/xmpush/thrift/j;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/k;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/service/at;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/k;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/service/at;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    :try_start_0
    new-instance v0, Lcom/xiaomi/xmpush/thrift/j;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/j;-><init>()V

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/ae;->m()[B

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/xmpush/thrift/aq;->a(Lorg/apache/thrift/a;[B)V
    :try_end_0
    .catch Lorg/apache/thrift/f; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method


# virtual methods
.method public a(Lcom/xiaomi/xmpush/thrift/ae;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/xiaomi/mipush/sdk/k;->d(Lcom/xiaomi/xmpush/thrift/ae;)Lcom/xiaomi/xmpush/thrift/j;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registration convert geofence object failed notification_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/ae;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/k;->c:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/j;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/xiaomi/channel/commonutils/android/b;->f(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0, v0}, Lcom/xiaomi/mipush/sdk/k;->a(Lcom/xiaomi/xmpush/thrift/j;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/k;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaomi/push/service/ar;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/ar;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/service/ar;->a(Lcom/xiaomi/xmpush/thrift/j;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p1, v1, v3

    if-nez p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GeoFenceRegMessageProcessor. insert a new geofence failed about geo_id:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/b/c;->a(Ljava/lang/String;)V

    :cond_2
    new-instance p1, Lcom/xiaomi/mipush/sdk/g;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/k;->c:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/xiaomi/mipush/sdk/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/xiaomi/mipush/sdk/g;->a(Lcom/xiaomi/xmpush/thrift/j;)Z

    const/4 p1, 0x1

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/mipush/sdk/k;->a(Lcom/xiaomi/xmpush/thrift/j;Z)V

    const-string p1, "receive geo reg notification"

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/b/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/xiaomi/xmpush/thrift/ae;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/xiaomi/mipush/sdk/k;->d(Lcom/xiaomi/xmpush/thrift/ae;)Lcom/xiaomi/xmpush/thrift/j;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregistration convert geofence object failed notification_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/ae;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/k;->c:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/j;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/xiaomi/channel/commonutils/android/b;->f(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0, v0}, Lcom/xiaomi/mipush/sdk/k;->a(Lcom/xiaomi/xmpush/thrift/j;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/k;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaomi/push/service/ar;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/ar;

    move-result-object p1

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/xiaomi/push/service/ar;->d(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GeoFenceRegMessageProcessor. delete a geofence about geo_id:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " falied"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/b/c;->a(Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/k;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaomi/push/service/as;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/as;

    move-result-object p1

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/xiaomi/push/service/as;->b(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GeoFenceRegMessageProcessor. delete all geofence messages about geo_id:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " failed"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/b/c;->a(Ljava/lang/String;)V

    :cond_3
    new-instance p1, Lcom/xiaomi/mipush/sdk/g;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/k;->c:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/xiaomi/mipush/sdk/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/xiaomi/mipush/sdk/g;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/mipush/sdk/k;->a(Lcom/xiaomi/xmpush/thrift/j;Z)V

    const-string p1, "receive geo unreg notification"

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/b/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c(Lcom/xiaomi/xmpush/thrift/ae;)V
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/k;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/service/at;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/k;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/service/at;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/k;->c:Landroid/content/Context;

    iget-object p1, p1, Lcom/xiaomi/xmpush/thrift/ae;->i:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/xiaomi/channel/commonutils/android/b;->f(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/k;->a()Lcom/xiaomi/xmpush/thrift/s;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/xmpush/thrift/aq;->a(Lorg/apache/thrift/a;)[B

    move-result-object v0

    new-instance v1, Lcom/xiaomi/xmpush/thrift/ae;

    const-string v2, "-1"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/ae;-><init>(Ljava/lang/String;Z)V

    sget-object v2, Lcom/xiaomi/xmpush/thrift/o;->I:Lcom/xiaomi/xmpush/thrift/o;

    iget-object v2, v2, Lcom/xiaomi/xmpush/thrift/o;->N:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/ae;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ae;

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/ae;->a([B)Lcom/xiaomi/xmpush/thrift/ae;

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/k;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/x;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/x;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/xmpush/thrift/a;->i:Lcom/xiaomi/xmpush/thrift/a;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaomi/mipush/sdk/x;->a(Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;ZLcom/xiaomi/xmpush/thrift/r;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GeoFenceRegMessageProcessor.sync_geo_data. geos size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/s;->a()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/b/c;->c(Ljava/lang/String;)V

    return-void
.end method
