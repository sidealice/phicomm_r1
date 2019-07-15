.class Ldagger/internal/LazyBinding$1;
.super Ljava/lang/Object;
.source "LazyBinding.java"

# interfaces
.implements Ldagger/Lazy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldagger/internal/LazyBinding;->get()Ldagger/Lazy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/Lazy",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private volatile cacheValue:Ljava/lang/Object;

.field final synthetic this$0:Ldagger/internal/LazyBinding;


# direct methods
.method constructor <init>(Ldagger/internal/LazyBinding;)V
    .locals 1

    .prologue
    .line 50
    .local p0, "this":Ldagger/internal/LazyBinding$1;, "Ldagger/internal/LazyBinding.1;"
    iput-object p1, p0, Ldagger/internal/LazyBinding$1;->this$0:Ldagger/internal/LazyBinding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {}, Ldagger/internal/LazyBinding;->access$000()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ldagger/internal/LazyBinding$1;->cacheValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Ldagger/internal/LazyBinding$1;, "Ldagger/internal/LazyBinding.1;"
    iget-object v0, p0, Ldagger/internal/LazyBinding$1;->cacheValue:Ljava/lang/Object;

    invoke-static {}, Ldagger/internal/LazyBinding;->access$000()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 57
    monitor-enter p0

    .line 58
    :try_start_0
    iget-object v0, p0, Ldagger/internal/LazyBinding$1;->cacheValue:Ljava/lang/Object;

    invoke-static {}, Ldagger/internal/LazyBinding;->access$000()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 59
    iget-object v0, p0, Ldagger/internal/LazyBinding$1;->this$0:Ldagger/internal/LazyBinding;

    invoke-static {v0}, Ldagger/internal/LazyBinding;->access$100(Ldagger/internal/LazyBinding;)Ldagger/internal/Binding;

    move-result-object v0

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ldagger/internal/LazyBinding$1;->cacheValue:Ljava/lang/Object;

    .line 61
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :cond_1
    iget-object v0, p0, Ldagger/internal/LazyBinding$1;->cacheValue:Ljava/lang/Object;

    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
