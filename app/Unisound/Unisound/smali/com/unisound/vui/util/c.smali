.class public abstract Lcom/unisound/vui/util/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/unisound/vui/util/b",
        "<TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/unisound/vui/util/c;->a:Ljava/util/Map;

    const/4 v0, 0x1

    iput v0, p0, Lcom/unisound/vui/util/c;->b:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;Ljava/lang/String;)Lcom/unisound/vui/util/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "firstNameComponent"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "secondNameComponent"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unisound/vui/util/c;->a(Ljava/lang/String;)Lcom/unisound/vui/util/b;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/unisound/vui/util/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "empty name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lcom/unisound/vui/util/c;->a:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/unisound/vui/util/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/util/b;

    if-nez v0, :cond_2

    iget v0, p0, Lcom/unisound/vui/util/c;->b:I

    invoke-virtual {p0, v0, p1}, Lcom/unisound/vui/util/c;->b(ILjava/lang/String;)Lcom/unisound/vui/util/b;

    move-result-object v0

    iget-object v2, p0, Lcom/unisound/vui/util/c;->a:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, p0, Lcom/unisound/vui/util/c;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/unisound/vui/util/c;->b:I

    :cond_2
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected abstract b(ILjava/lang/String;)Lcom/unisound/vui/util/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public b(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/unisound/vui/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/unisound/vui/util/c;->a:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/unisound/vui/util/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(Ljava/lang/String;)Lcom/unisound/vui/util/b;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "empty name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lcom/unisound/vui/util/c;->a:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/unisound/vui/util/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/util/b;

    if-nez v0, :cond_2

    iget v0, p0, Lcom/unisound/vui/util/c;->b:I

    invoke-virtual {p0, v0, p1}, Lcom/unisound/vui/util/c;->b(ILjava/lang/String;)Lcom/unisound/vui/util/b;

    move-result-object v0

    iget-object v2, p0, Lcom/unisound/vui/util/c;->a:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, p0, Lcom/unisound/vui/util/c;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/unisound/vui/util/c;->b:I

    monitor-exit v1

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "\'%s\' is already in use"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
