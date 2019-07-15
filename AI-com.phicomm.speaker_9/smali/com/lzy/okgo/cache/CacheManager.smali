.class public final enum Lcom/lzy/okgo/cache/CacheManager;
.super Ljava/lang/Enum;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lzy/okgo/cache/CacheManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lzy/okgo/cache/CacheManager;

.field public static final enum INSTANCE:Lcom/lzy/okgo/cache/CacheManager;


# instance fields
.field private cacheDao:Lcom/lzy/okgo/cache/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okgo/cache/a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 9
    new-instance v0, Lcom/lzy/okgo/cache/CacheManager;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lzy/okgo/cache/CacheManager;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lzy/okgo/cache/CacheManager;->INSTANCE:Lcom/lzy/okgo/cache/CacheManager;

    const/4 v0, 0x1

    .line 7
    new-array v0, v0, [Lcom/lzy/okgo/cache/CacheManager;

    sget-object v1, Lcom/lzy/okgo/cache/CacheManager;->INSTANCE:Lcom/lzy/okgo/cache/CacheManager;

    aput-object v1, v0, v2

    sput-object v0, Lcom/lzy/okgo/cache/CacheManager;->$VALUES:[Lcom/lzy/okgo/cache/CacheManager;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/lzy/okgo/cache/CacheManager;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 16
    new-instance p1, Lcom/lzy/okgo/cache/a;

    invoke-direct {p1}, Lcom/lzy/okgo/cache/a;-><init>()V

    iput-object p1, p0, Lcom/lzy/okgo/cache/CacheManager;->cacheDao:Lcom/lzy/okgo/cache/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lzy/okgo/cache/CacheManager;
    .locals 1

    .line 7
    const-class v0, Lcom/lzy/okgo/cache/CacheManager;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lzy/okgo/cache/CacheManager;

    return-object p0
.end method

.method public static values()[Lcom/lzy/okgo/cache/CacheManager;
    .locals 1

    .line 7
    sget-object v0, Lcom/lzy/okgo/cache/CacheManager;->$VALUES:[Lcom/lzy/okgo/cache/CacheManager;

    invoke-virtual {v0}, [Lcom/lzy/okgo/cache/CacheManager;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lzy/okgo/cache/CacheManager;

    return-object v0
.end method


# virtual methods
.method public clear()Z
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/lzy/okgo/cache/CacheManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okgo/cache/CacheManager;->cacheDao:Lcom/lzy/okgo/cache/a;

    invoke-virtual {v0}, Lcom/lzy/okgo/cache/a;->d()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 99
    :goto_0
    iget-object v1, p0, Lcom/lzy/okgo/cache/CacheManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/lzy/okgo/cache/CacheManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public get(Ljava/lang/String;)Lcom/lzy/okgo/cache/CacheEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/lzy/okgo/cache/CacheEntity<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/lzy/okgo/cache/CacheManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okgo/cache/CacheManager;->cacheDao:Lcom/lzy/okgo/cache/a;

    invoke-virtual {v0, p1}, Lcom/lzy/okgo/cache/a;->a(Ljava/lang/String;)Lcom/lzy/okgo/cache/CacheEntity;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    iget-object v0, p0, Lcom/lzy/okgo/cache/CacheManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/lzy/okgo/cache/CacheManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public get(Ljava/lang/String;Ljava/lang/Class;)Lcom/lzy/okgo/cache/CacheEntity;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/lzy/okgo/cache/CacheEntity<",
            "TT;>;"
        }
    .end annotation

    .line 37
    invoke-virtual {p0, p1}, Lcom/lzy/okgo/cache/CacheManager;->get(Ljava/lang/String;)Lcom/lzy/okgo/cache/CacheEntity;

    move-result-object p1

    return-object p1
.end method

.method public getAll()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lzy/okgo/cache/CacheEntity<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/lzy/okgo/cache/CacheManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okgo/cache/CacheManager;->cacheDao:Lcom/lzy/okgo/cache/a;

    invoke-virtual {v0}, Lcom/lzy/okgo/cache/a;->e()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    iget-object v1, p0, Lcom/lzy/okgo/cache/CacheManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/lzy/okgo/cache/CacheManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/lzy/okgo/cache/CacheManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okgo/cache/CacheManager;->cacheDao:Lcom/lzy/okgo/cache/a;

    invoke-virtual {v0, p1}, Lcom/lzy/okgo/cache/a;->b(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    iget-object v0, p0, Lcom/lzy/okgo/cache/CacheManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/lzy/okgo/cache/CacheManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public replace(Ljava/lang/String;Lcom/lzy/okgo/cache/CacheEntity;)Lcom/lzy/okgo/cache/CacheEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/lzy/okgo/cache/CacheEntity<",
            "TT;>;)",
            "Lcom/lzy/okgo/cache/CacheEntity<",
            "TT;>;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/lzy/okgo/cache/CacheManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 65
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/lzy/okgo/cache/CacheEntity;->setKey(Ljava/lang/String;)V

    .line 66
    iget-object p1, p0, Lcom/lzy/okgo/cache/CacheManager;->cacheDao:Lcom/lzy/okgo/cache/a;

    invoke-virtual {p1, p2}, Lcom/lzy/okgo/cache/a;->b(Ljava/lang/Object;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    iget-object p1, p0, Lcom/lzy/okgo/cache/CacheManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p2

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/lzy/okgo/cache/CacheManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
