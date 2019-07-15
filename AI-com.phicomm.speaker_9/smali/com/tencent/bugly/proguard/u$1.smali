.class final Lcom/tencent/bugly/proguard/u$1;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/u;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/Runnable;

.field private synthetic b:Lcom/tencent/bugly/proguard/u;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/u;Ljava/lang/Runnable;)V
    .locals 0

    .line 720
    iput-object p1, p0, Lcom/tencent/bugly/proguard/u$1;->b:Lcom/tencent/bugly/proguard/u;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/u$1;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 723
    iget-object v0, p0, Lcom/tencent/bugly/proguard/u$1;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 724
    iget-object v0, p0, Lcom/tencent/bugly/proguard/u$1;->b:Lcom/tencent/bugly/proguard/u;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->a(Lcom/tencent/bugly/proguard/u;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 726
    :try_start_0
    iget-object v1, p0, Lcom/tencent/bugly/proguard/u$1;->b:Lcom/tencent/bugly/proguard/u;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/u;->b(Lcom/tencent/bugly/proguard/u;)I

    .line 727
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
