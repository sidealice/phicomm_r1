.class public Lcom/unisound/vui/util/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unisound/vui/util/AttributeMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/vui/util/d$a;
    }
.end annotation


# static fields
.field private static final BUCKET_SIZE:I = 0x4

.field private static final MASK:I = 0x3

.field private static final UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater",
            "<",
            "Lcom/unisound/vui/util/d;",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile attributes:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/unisound/vui/util/d$a",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/unisound/vui/util/d;

    const-class v1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const-string v2, "attributes"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lcom/unisound/vui/util/d;->UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static index(Lcom/unisound/vui/util/AttributeKey;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unisound/vui/util/AttributeKey",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .local p0, "key":Lcom/unisound/vui/util/AttributeKey;, "Lcom/unisound/vui/util/AttributeKey<*>;"
    invoke-virtual {p0}, Lcom/unisound/vui/util/AttributeKey;->id()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    return v0
.end method


# virtual methods
.method public attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/unisound/vui/util/AttributeKey",
            "<TT;>;)",
            "Lcom/unisound/vui/util/Attribute",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p1, "key":Lcom/unisound/vui/util/AttributeKey;, "Lcom/unisound/vui/util/AttributeKey<TT;>;"
    const/4 v3, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/unisound/vui/util/d;->attributes:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    if-nez v0, :cond_6

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    sget-object v1, Lcom/unisound/vui/util/d;->UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v0, p0, Lcom/unisound/vui/util/d;->attributes:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-object v1, v0

    :goto_0
    invoke-static {p1}, Lcom/unisound/vui/util/d;->index(Lcom/unisound/vui/util/AttributeKey;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/util/d$a;

    if-nez v0, :cond_2

    new-instance v0, Lcom/unisound/vui/util/d$a;

    invoke-direct {v0, p1}, Lcom/unisound/vui/util/d$a;-><init>(Lcom/unisound/vui/util/AttributeKey;)V

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/util/d$a;

    :cond_2
    monitor-enter v0

    move-object v1, v0

    :goto_2
    :try_start_0
    invoke-static {v1}, Lcom/unisound/vui/util/d$a;->a(Lcom/unisound/vui/util/d$a;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Lcom/unisound/vui/util/d$a;->b(Lcom/unisound/vui/util/d$a;)Lcom/unisound/vui/util/AttributeKey;

    move-result-object v2

    if-ne v2, p1, :cond_3

    monitor-exit v0

    move-object v0, v1

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lcom/unisound/vui/util/d$a;->c(Lcom/unisound/vui/util/d$a;)Lcom/unisound/vui/util/d$a;

    move-result-object v2

    if-nez v2, :cond_4

    new-instance v2, Lcom/unisound/vui/util/d$a;

    invoke-direct {v2, v0, p1}, Lcom/unisound/vui/util/d$a;-><init>(Lcom/unisound/vui/util/d$a;Lcom/unisound/vui/util/AttributeKey;)V

    invoke-static {v1, v2}, Lcom/unisound/vui/util/d$a;->a(Lcom/unisound/vui/util/d$a;Lcom/unisound/vui/util/d$a;)Lcom/unisound/vui/util/d$a;

    invoke-static {v2, v1}, Lcom/unisound/vui/util/d$a;->b(Lcom/unisound/vui/util/d$a;Lcom/unisound/vui/util/d$a;)Lcom/unisound/vui/util/d$a;

    monitor-exit v0

    move-object v0, v2

    goto :goto_1

    :cond_4
    move-object v1, v2

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_5
    move-object v1, v0

    goto :goto_0

    :cond_6
    move-object v1, v0

    goto :goto_0
.end method

.method public hasAttr(Lcom/unisound/vui/util/AttributeKey;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/unisound/vui/util/AttributeKey",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "key":Lcom/unisound/vui/util/AttributeKey;, "Lcom/unisound/vui/util/AttributeKey<TT;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/unisound/vui/util/d;->attributes:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/unisound/vui/util/d;->index(Lcom/unisound/vui/util/AttributeKey;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/util/d$a;

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/unisound/vui/util/d$a;->b(Lcom/unisound/vui/util/d$a;)Lcom/unisound/vui/util/AttributeKey;

    move-result-object v3

    if-ne v3, p1, :cond_3

    invoke-static {v0}, Lcom/unisound/vui/util/d$a;->a(Lcom/unisound/vui/util/d$a;)Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    monitor-enter v0

    :try_start_0
    invoke-static {v0}, Lcom/unisound/vui/util/d$a;->c(Lcom/unisound/vui/util/d$a;)Lcom/unisound/vui/util/d$a;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_5

    invoke-static {v3}, Lcom/unisound/vui/util/d$a;->a(Lcom/unisound/vui/util/d$a;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v3}, Lcom/unisound/vui/util/d$a;->b(Lcom/unisound/vui/util/d$a;)Lcom/unisound/vui/util/AttributeKey;

    move-result-object v4

    if-ne v4, p1, :cond_4

    monitor-exit v0

    move v0, v2

    goto :goto_0

    :cond_4
    invoke-static {v3}, Lcom/unisound/vui/util/d$a;->c(Lcom/unisound/vui/util/d$a;)Lcom/unisound/vui/util/d$a;

    move-result-object v3

    goto :goto_1

    :cond_5
    monitor-exit v0

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
