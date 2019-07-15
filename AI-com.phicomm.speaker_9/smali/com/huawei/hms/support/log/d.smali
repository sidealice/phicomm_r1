.class public final Lcom/huawei/hms/support/log/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/support/log/d$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/huawei/hms/support/log/d;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/lang/String; = "log.log"

.field private static c:Lcom/huawei/hms/support/log/LogLevel;


# instance fields
.field private d:Lcom/huawei/hms/support/log/a;

.field private e:Ljava/lang/String;

.field private final f:Lcom/huawei/hms/support/log/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/huawei/hms/support/log/d;->a:Ljava/util/Map;

    sget-object v0, Lcom/huawei/hms/support/log/LogLevel;->INFO:Lcom/huawei/hms/support/log/LogLevel;

    sput-object v0, Lcom/huawei/hms/support/log/d;->c:Lcom/huawei/hms/support/log/LogLevel;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hms/support/log/d;->d:Lcom/huawei/hms/support/log/a;

    new-instance v0, Lcom/huawei/hms/support/log/g;

    invoke-direct {v0}, Lcom/huawei/hms/support/log/g;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/support/log/d;->f:Lcom/huawei/hms/support/log/g;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/huawei/hms/support/log/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Lcom/huawei/hms/support/log/LogLevel;)V
    .locals 0

    sput-object p0, Lcom/huawei/hms/support/log/d;->c:Lcom/huawei/hms/support/log/LogLevel;

    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/support/log/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/huawei/hms/support/log/d;->b()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/huawei/hms/support/log/d;->b:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hms/support/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    new-instance v0, Lcom/huawei/hms/support/log/e$a;

    invoke-direct {v0, p1, p3}, Lcom/huawei/hms/support/log/e$a;-><init>(Ljava/lang/String;Lcom/huawei/hms/support/log/LogLevel;)V

    iget-object p1, p0, Lcom/huawei/hms/support/log/d;->e:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/huawei/hms/support/log/e$a;->a(Ljava/lang/String;)Lcom/huawei/hms/support/log/e$a;

    move-result-object p1

    iget-object p3, p0, Lcom/huawei/hms/support/log/d;->f:Lcom/huawei/hms/support/log/g;

    invoke-virtual {p3}, Lcom/huawei/hms/support/log/g;->a()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/huawei/hms/support/log/e$a;->a(I)Lcom/huawei/hms/support/log/e$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/hms/support/log/e$a;->a()Lcom/huawei/hms/support/log/e;

    move-result-object p1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    const-string p3, "["

    invoke-virtual {p1, p3}, Lcom/huawei/hms/support/log/e;->a(Ljava/lang/Object;)Lcom/huawei/hms/support/log/e;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcom/huawei/hms/support/log/e;->a(Ljava/lang/Object;)Lcom/huawei/hms/support/log/e;

    move-result-object p3

    const-string p4, "]"

    invoke-virtual {p3, p4}, Lcom/huawei/hms/support/log/e;->a(Ljava/lang/Object;)Lcom/huawei/hms/support/log/e;

    :cond_0
    invoke-virtual {p1, p2}, Lcom/huawei/hms/support/log/e;->a(Ljava/lang/Object;)Lcom/huawei/hms/support/log/e;

    if-eqz p5, :cond_1

    invoke-virtual {p1, p5}, Lcom/huawei/hms/support/log/e;->b(Ljava/lang/Throwable;)Lcom/huawei/hms/support/log/e;

    :cond_1
    iget-object p2, p0, Lcom/huawei/hms/support/log/d;->d:Lcom/huawei/hms/support/log/a;

    invoke-virtual {p1, p2}, Lcom/huawei/hms/support/log/e;->a(Lcom/huawei/hms/support/log/f;)V

    return-void
.end method

.method public static declared-synchronized b(Ljava/lang/String;)Lcom/huawei/hms/support/log/d;
    .locals 2

    const-class v0, Lcom/huawei/hms/support/log/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/huawei/hms/support/log/d;->b:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/huawei/hms/support/log/d;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hms/support/log/d;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private b()V
    .locals 3

    new-instance v0, Lcom/huawei/hms/support/log/e$a;

    sget-object v1, Lcom/huawei/hms/support/log/LogLevel;->OUT:Lcom/huawei/hms/support/log/LogLevel;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/huawei/hms/support/log/e$a;-><init>(Ljava/lang/String;Lcom/huawei/hms/support/log/LogLevel;)V

    invoke-virtual {v0}, Lcom/huawei/hms/support/log/e$a;->a()Lcom/huawei/hms/support/log/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/support/log/e;->c()Lcom/huawei/hms/support/log/e;

    move-result-object v0

    invoke-static {}, Lcom/huawei/hms/support/log/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hms/support/log/e;->a(Ljava/lang/Object;)Lcom/huawei/hms/support/log/e;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hms/support/log/d;->d:Lcom/huawei/hms/support/log/a;

    invoke-virtual {v0, v1}, Lcom/huawei/hms/support/log/e;->a(Lcom/huawei/hms/support/log/f;)V

    return-void
.end method

.method static synthetic e(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hms/support/log/d;
    .locals 0

    invoke-static {p0, p1}, Lcom/huawei/hms/support/log/d;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hms/support/log/d;

    move-result-object p0

    return-object p0
.end method

.method private static declared-synchronized f(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hms/support/log/d;
    .locals 4

    const-class v0, Lcom/huawei/hms/support/log/d;

    monitor-enter v0

    :try_start_0
    const-string v1, "LogAdaptor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createAppLog, file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", module:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/huawei/hms/support/log/d;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hms/support/log/d;

    if-nez v1, :cond_0

    new-instance v1, Lcom/huawei/hms/support/log/d;

    invoke-direct {v1}, Lcom/huawei/hms/support/log/d;-><init>()V

    invoke-direct {v1, p0, p1}, Lcom/huawei/hms/support/log/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/huawei/hms/support/log/d;->c:Lcom/huawei/hms/support/log/LogLevel;

    invoke-virtual {v1, p0}, Lcom/huawei/hms/support/log/d;->b(Lcom/huawei/hms/support/log/LogLevel;)V

    sget-object p0, Lcom/huawei/hms/support/log/d;->a:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iput-object p2, p0, Lcom/huawei/hms/support/log/d;->e:Ljava/lang/String;

    new-instance v0, Lcom/huawei/hms/support/log/a;

    sget-object v1, Lcom/huawei/hms/support/log/LogLevel;->INFO:Lcom/huawei/hms/support/log/LogLevel;

    invoke-direct {v0, p2, p1, v1}, Lcom/huawei/hms/support/log/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hms/support/log/LogLevel;)V

    iput-object v0, p0, Lcom/huawei/hms/support/log/d;->d:Lcom/huawei/hms/support/log/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    sget-object v3, Lcom/huawei/hms/support/log/LogLevel;->DEBUG:Lcom/huawei/hms/support/log/LogLevel;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/huawei/hms/support/log/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hms/support/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    sget-object v3, Lcom/huawei/hms/support/log/LogLevel;->ERROR:Lcom/huawei/hms/support/log/LogLevel;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/huawei/hms/support/log/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hms/support/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public b(Lcom/huawei/hms/support/log/LogLevel;)V
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/support/log/d;->d:Lcom/huawei/hms/support/log/a;

    invoke-virtual {v0, p1}, Lcom/huawei/hms/support/log/a;->b(Lcom/huawei/hms/support/log/LogLevel;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    sget-object v3, Lcom/huawei/hms/support/log/LogLevel;->INFO:Lcom/huawei/hms/support/log/LogLevel;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/huawei/hms/support/log/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hms/support/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    sget-object v3, Lcom/huawei/hms/support/log/LogLevel;->WARN:Lcom/huawei/hms/support/log/LogLevel;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/huawei/hms/support/log/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hms/support/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Lcom/huawei/hms/support/log/LogLevel;)Z
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/support/log/d;->d:Lcom/huawei/hms/support/log/a;

    invoke-virtual {v0, p1}, Lcom/huawei/hms/support/log/a;->a(Lcom/huawei/hms/support/log/LogLevel;)Z

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    sget-object v3, Lcom/huawei/hms/support/log/LogLevel;->ERROR:Lcom/huawei/hms/support/log/LogLevel;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/huawei/hms/support/log/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hms/support/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
