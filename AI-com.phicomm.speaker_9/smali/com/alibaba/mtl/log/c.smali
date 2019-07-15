.class public Lcom/alibaba/mtl/log/c;
.super Ljava/lang/Object;
.source "UTMCVariables.java"


# static fields
.field public static final a:Lcom/alibaba/mtl/log/c;


# instance fields
.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/alibaba/mtl/log/c;

    invoke-direct {v0}, Lcom/alibaba/mtl/log/c;-><init>()V

    sput-object v0, Lcom/alibaba/mtl/log/c;->a:Lcom/alibaba/mtl/log/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/alibaba/mtl/log/c;->u:Z

    .line 14
    iput-boolean v0, p0, Lcom/alibaba/mtl/log/c;->v:Z

    const/4 v1, 0x0

    .line 15
    iput-object v1, p0, Lcom/alibaba/mtl/log/c;->H:Ljava/lang/String;

    .line 16
    iput-object v1, p0, Lcom/alibaba/mtl/log/c;->r:Ljava/util/Map;

    .line 17
    iput-boolean v0, p0, Lcom/alibaba/mtl/log/c;->w:Z

    .line 18
    iput-boolean v0, p0, Lcom/alibaba/mtl/log/c;->x:Z

    .line 20
    iput-object v1, p0, Lcom/alibaba/mtl/log/c;->I:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/alibaba/mtl/log/c;->J:Ljava/lang/String;

    .line 39
    iput-object v1, p0, Lcom/alibaba/mtl/log/c;->K:Ljava/lang/String;

    .line 40
    iput-boolean v0, p0, Lcom/alibaba/mtl/log/c;->y:Z

    return-void
.end method

.method public static a()Lcom/alibaba/mtl/log/c;
    .locals 1

    .line 10
    sget-object v0, Lcom/alibaba/mtl/log/c;->a:Lcom/alibaba/mtl/log/c;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/mtl/log/c;->r:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 77
    :try_start_0
    iput-object p1, p0, Lcom/alibaba/mtl/log/c;->r:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 76
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized e(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 23
    :try_start_0
    iput-object p1, p0, Lcom/alibaba/mtl/log/c;->I:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 22
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized f()Z
    .locals 1

    monitor-enter p0

    .line 35
    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/mtl/log/c;->x:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized p()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 31
    :try_start_0
    iput-boolean v0, p0, Lcom/alibaba/mtl/log/c;->x:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 30
    monitor-exit p0

    throw v0
.end method
