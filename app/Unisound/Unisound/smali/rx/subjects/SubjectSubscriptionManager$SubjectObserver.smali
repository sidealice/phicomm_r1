.class public final Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;
.super Ljava/lang/Object;
.source "SubjectSubscriptionManager.java"

# interfaces
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subjects/SubjectSubscriptionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "SubjectObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final actual:Lrx/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observer",
            "<-TT;>;"
        }
    .end annotation
.end field

.field protected volatile caughtUp:Z

.field emitting:Z

.field fastPath:Z

.field first:Z

.field private volatile index:Ljava/lang/Object;

.field queue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observer",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    .local p1, "actual":Lrx/Observer;, "Lrx/Observer<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->first:Z

    .line 219
    iput-object p1, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->actual:Lrx/Observer;

    .line 220
    return-void
.end method


# virtual methods
.method protected accept(Ljava/lang/Object;Lrx/internal/operators/NotificationLite;)V
    .locals 1
    .param p1, "n"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 317
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    .local p2, "nl":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    if-eqz p1, :cond_0

    .line 318
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->actual:Lrx/Observer;

    invoke-virtual {p2, v0, p1}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z

    .line 320
    :cond_0
    return-void
.end method

.method protected emitFirst(Ljava/lang/Object;Lrx/internal/operators/NotificationLite;)V
    .locals 2
    .param p1, "n"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    .local p2, "nl":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    const/4 v0, 0x0

    .line 262
    monitor-enter p0

    .line 263
    :try_start_0
    iget-boolean v1, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->first:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitting:Z

    if-eqz v1, :cond_2

    .line 264
    :cond_0
    monitor-exit p0

    .line 272
    :cond_1
    :goto_0
    return-void

    .line 266
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->first:Z

    .line 267
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    iput-boolean v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitting:Z

    .line 268
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    if-eqz p1, :cond_1

    .line 270
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitLoop(Ljava/util/List;Ljava/lang/Object;Lrx/internal/operators/NotificationLite;)V

    goto :goto_0

    .line 268
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected emitLoop(Ljava/util/List;Ljava/lang/Object;Lrx/internal/operators/NotificationLite;)V
    .locals 6
    .param p2, "current"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 280
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    .local p1, "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local p3, "nl":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    const/4 v2, 0x1

    .line 281
    .local v2, "once":Z
    const/4 v3, 0x0

    .line 284
    .local v3, "skipFinal":Z
    :goto_0
    if-eqz p1, :cond_1

    .line 285
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 286
    .local v1, "n":Ljava/lang/Object;
    invoke-virtual {p0, v1, p3}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->accept(Ljava/lang/Object;Lrx/internal/operators/NotificationLite;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 304
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "n":Ljava/lang/Object;
    :catchall_0
    move-exception v4

    if-nez v3, :cond_0

    .line 305
    monitor-enter p0

    .line 306
    const/4 v5, 0x0

    :try_start_1
    iput-boolean v5, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitting:Z

    .line 307
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :cond_0
    throw v4

    .line 289
    :cond_1
    if-eqz v2, :cond_2

    .line 290
    const/4 v2, 0x0

    .line 291
    :try_start_2
    invoke-virtual {p0, p2, p3}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->accept(Ljava/lang/Object;Lrx/internal/operators/NotificationLite;)V

    .line 293
    :cond_2
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 294
    :try_start_3
    iget-object p1, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->queue:Ljava/util/List;

    .line 295
    const/4 v4, 0x0

    iput-object v4, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->queue:Ljava/util/List;

    .line 296
    if-nez p1, :cond_4

    .line 297
    const/4 v4, 0x0

    iput-boolean v4, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitting:Z

    .line 298
    const/4 v3, 0x1

    .line 299
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 304
    if-nez v3, :cond_3

    .line 305
    monitor-enter p0

    .line 306
    const/4 v4, 0x0

    :try_start_4
    iput-boolean v4, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitting:Z

    .line 307
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 310
    :cond_3
    return-void

    .line 301
    :cond_4
    :try_start_5
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 307
    :catchall_2
    move-exception v4

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v4

    :catchall_3
    move-exception v4

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v4
.end method

.method protected emitNext(Ljava/lang/Object;Lrx/internal/operators/NotificationLite;)V
    .locals 1
    .param p1, "n"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 240
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    .local p2, "nl":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    iget-boolean v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->fastPath:Z

    if-nez v0, :cond_2

    .line 241
    monitor-enter p0

    .line 242
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->first:Z

    .line 243
    iget-boolean v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitting:Z

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->queue:Ljava/util/List;

    if-nez v0, :cond_0

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->queue:Ljava/util/List;

    .line 247
    :cond_0
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->queue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    monitor-exit p0

    .line 254
    :goto_0
    return-void

    .line 250
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->fastPath:Z

    .line 253
    :cond_2
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->actual:Lrx/Observer;

    invoke-virtual {p2, v0, p1}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z

    goto :goto_0

    .line 250
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected getActual()Lrx/Observer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observer",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 324
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->actual:Lrx/Observer;

    return-object v0
.end method

.method public index()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            ">()TI;"
        }
    .end annotation

    .prologue
    .line 332
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->index:Ljava/lang/Object;

    return-object v0
.end method

.method public index(Ljava/lang/Object;)V
    .locals 0
    .param p1, "newIndex"    # Ljava/lang/Object;

    .prologue
    .line 339
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    iput-object p1, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->index:Ljava/lang/Object;

    .line 340
    return-void
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 231
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->actual:Lrx/Observer;

    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    .line 232
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 227
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->actual:Lrx/Observer;

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    .line 228
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->actual:Lrx/Observer;

    invoke-interface {v0, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 224
    return-void
.end method
