.class final Lcom/unisound/vui/engine/DefaultANTPipeline;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unisound/vui/engine/ANTPipeline;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/vui/engine/DefaultANTPipeline$a;,
        Lcom/unisound/vui/engine/DefaultANTPipeline$b;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final NAME_CACHES:[Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DefaultANTPipeline"


# instance fields
.field final antEngine:Lcom/unisound/vui/engine/ANTEngine;

.field final head:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

.field private final name2ctx:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/unisound/vui/engine/ANTHandlerContext;",
            ">;"
        }
    .end annotation
.end field

.field final tail:Lcom/unisound/vui/engine/AbstractANTHandlerContext;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x0

    const-class v0, Lcom/unisound/vui/engine/DefaultANTPipeline;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/unisound/vui/engine/DefaultANTPipeline;->$assertionsDisabled:Z

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    new-array v0, v0, [Ljava/util/WeakHashMap;

    sput-object v0, Lcom/unisound/vui/engine/DefaultANTPipeline;->NAME_CACHES:[Ljava/util/WeakHashMap;

    :goto_1
    sget-object v0, Lcom/unisound/vui/engine/DefaultANTPipeline;->NAME_CACHES:[Ljava/util/WeakHashMap;

    array-length v0, v0

    if-ge v1, v0, :cond_1

    sget-object v0, Lcom/unisound/vui/engine/DefaultANTPipeline;->NAME_CACHES:[Ljava/util/WeakHashMap;

    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/unisound/vui/engine/ANTEngine;)V
    .locals 2
    .param p1, "antEngine"    # Lcom/unisound/vui/engine/ANTEngine;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/unisound/vui/engine/DefaultANTPipeline;->name2ctx:Ljava/util/Map;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "antEngine"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/unisound/vui/engine/DefaultANTPipeline;->antEngine:Lcom/unisound/vui/engine/ANTEngine;

    new-instance v0, Lcom/unisound/vui/engine/DefaultANTPipeline$a;

    invoke-direct {v0, p0}, Lcom/unisound/vui/engine/DefaultANTPipeline$a;-><init>(Lcom/unisound/vui/engine/DefaultANTPipeline;)V

    iput-object v0, p0, Lcom/unisound/vui/engine/DefaultANTPipeline;->head:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    new-instance v0, Lcom/unisound/vui/engine/DefaultANTPipeline$b;

    invoke-direct {v0, p0}, Lcom/unisound/vui/engine/DefaultANTPipeline$b;-><init>(Lcom/unisound/vui/engine/DefaultANTPipeline;)V

    iput-object v0, p0, Lcom/unisound/vui/engine/DefaultANTPipeline;->tail:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    iget-object v0, p0, Lcom/unisound/vui/engine/DefaultANTPipeline;->head:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    iget-object v1, p0, Lcom/unisound/vui/engine/DefaultANTPipeline;->tail:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    iput-object v1, v0, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->next:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    iget-object v0, p0, Lcom/unisound/vui/engine/DefaultANTPipeline;->tail:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    iget-object v1, p0, Lcom/unisound/vui/engine/DefaultANTPipeline;->head:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    iput-object v1, v0, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->prev:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Class;

    .prologue
    invoke-static {p0}, Lcom/unisound/vui/engine/DefaultANTPipeline;->generateName0(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addAfter0(Ljava/lang/String;Lcom/unisound/vui/engine/AbstractANTHandlerContext;Lcom/unisound/vui/engine/AbstractANTHandlerContext;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ctx"    # Lcom/unisound/vui/engine/AbstractANTHandlerContext;
    .param p3, "newCtx"    # Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    .prologue
    invoke-direct {p0, p1}, Lcom/unisound/vui/engine/DefaultANTPipeline;->checkDuplicateName(Ljava/lang/String;)V

    iput-object p2, p3, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->prev:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    iget-object v0, p2, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->next:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    iput-object v0, p3, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->next:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    iget-object v0, p2, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->next:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    iput-object p3, v0, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->prev:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    iput-object p3, p2, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->next:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    iget-object v0, p0, Lcom/unisound/vui/engine/DefaultANTPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private addBefore0(Ljava/lang/String;Lcom/unisound/vui/engine/AbstractANTHandlerContext;Lcom/unisound/vui/engine/AbstractANTHandlerContext;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ctx"    # Lcom/unisound/vui/engine/AbstractANTHandlerContext;
    .param p3, "newCtx"    # Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    .prologue
    iget-object v0, p2, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->prev:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    iput-object v0, p3, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->prev:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    iput-object p2, p3, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->next:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    iget-object v0, p2, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->prev:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    iput-object p3, v0, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->next:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    iput-object p3, p2, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->prev:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    iget-object v0, p0, Lcom/unisound/vui/engine/DefaultANTPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private addFirst0(Ljava/lang/String;Lcom/unisound/vui/engine/AbstractANTHandlerContext;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "newCtx"    # Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/engine/DefaultANTPipeline;->head:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    iget-object v0, v0, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->next:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    iget-object v1, p0, Lcom/unisound/vui/engine/DefaultANTPipeline;->head:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    iput-object v1, p2, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->prev:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    iput-object v0, p2, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->next:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    iget-object v1, p0, Lcom/unisound/vui/engine/DefaultANTPipeline;->head:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    iput-object p2, v1, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->next:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    iput-object p2, v0, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->prev:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    iget-object v0, p0, Lcom/unisound/vui/engine/DefaultANTPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private addLast0(Ljava/lang/String;Lcom/unisound/vui/engine/AbstractANTHandlerContext;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "newCtx"    # Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/engine/DefaultANTPipeline;->tail:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    iget-object v0, v0, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->prev:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    iput-object v0, p2, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->prev:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    iget-object v1, p0, Lcom/unisound/vui/engine/DefaultANTPipeline;->tail:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    iput-object v1, p2, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->next:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    iput-object p2, v0, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->next:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    iget-object v0, p0, Lcom/unisound/vui/engine/DefaultANTPipeline;->tail:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    iput-object p2, v0, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->prev:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    iget-object v0, p0, Lcom/unisound/vui/engine/DefaultANTPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private checkDuplicateName(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/engine/DefaultANTPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate handler name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private generateName(Lcom/unisound/vui/engine/ANTHandler;)Ljava/lang/String;
    .locals 6
    .param p1, "handler"    # Lcom/unisound/vui/engine/ANTHandler;

    .prologue
    sget-object v0, Lcom/unisound/vui/engine/DefaultANTPipeline;->NAME_CACHES:[Ljava/util/WeakHashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    sget-object v1, Lcom/unisound/vui/engine/DefaultANTPipeline;->NAME_CACHES:[Ljava/util/WeakHashMap;

    array-length v1, v1

    int-to-long v4, v1

    rem-long/2addr v2, v4

    long-to-int v1, v2

    aget-object v1, v0, v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {v2}, Lcom/unisound/vui/engine/DefaultANTPipeline;->generateName0(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/unisound/vui/engine/DefaultANTPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/unisound/vui/engine/DefaultANTPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private static generateName0(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "handlerType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/unisound/vui/util/internal/c;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getContextOrDie(Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/AbstractANTHandlerContext;
    .locals 2
    .param p1, "handler"    # Lcom/unisound/vui/engine/ANTHandler;

    .prologue
    invoke-virtual {p0, p1}, Lcom/unisound/vui/engine/DefaultANTPipeline;->context(Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTHandlerContext;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method private getContextOrDie(Ljava/lang/String;)Lcom/unisound/vui/engine/AbstractANTHandlerContext;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/unisound/vui/engine/DefaultANTPipeline;->context(Ljava/lang/String;)Lcom/unisound/vui/engine/ANTHandlerContext;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method private remove(Lcom/unisound/vui/engine/AbstractANTHandlerContext;)Lcom/unisound/vui/engine/AbstractANTHandlerContext;
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    .prologue
    sget-boolean v0, Lcom/unisound/vui/engine/DefaultANTPipeline;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/unisound/vui/engine/DefaultANTPipeline;->head:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/engine/DefaultANTPipeline;->tail:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    if-ne p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/unisound/vui/engine/DefaultANTPipeline;->remove0(Lcom/unisound/vui/engine/AbstractANTHandlerContext;)V

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addAfter(Ljava/lang/String;Ljava/lang/String;Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;
    .locals 2
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "handler"    # Lcom/unisound/vui/engine/ANTHandler;

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/unisound/vui/engine/DefaultANTPipeline;->getContextOrDie(Ljava/lang/String;)Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/unisound/vui/engine/DefaultANTPipeline;->checkDuplicateName(Ljava/lang/String;)V

    new-instance v1, Lcom/unisound/vui/engine/DefaultANTHandlerContext;

    invoke-direct {v1, p0, p2, p3}, Lcom/unisound/vui/engine/DefaultANTHandlerContext;-><init>(Lcom/unisound/vui/engine/DefaultANTPipeline;Ljava/lang/String;Lcom/unisound/vui/engine/ANTHandler;)V

    invoke-direct {p0, p2, v0, v1}, Lcom/unisound/vui/engine/DefaultANTPipeline;->addAfter0(Ljava/lang/String;Lcom/unisound/vui/engine/AbstractANTHandlerContext;Lcom/unisound/vui/engine/AbstractANTHandlerContext;)V

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addBefore(Ljava/lang/String;Ljava/lang/String;Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;
    .locals 2
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "handler"    # Lcom/unisound/vui/engine/ANTHandler;

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/unisound/vui/engine/DefaultANTPipeline;->getContextOrDie(Ljava/lang/String;)Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/unisound/vui/engine/DefaultANTPipeline;->checkDuplicateName(Ljava/lang/String;)V

    new-instance v1, Lcom/unisound/vui/engine/DefaultANTHandlerContext;

    invoke-direct {v1, p0, p2, p3}, Lcom/unisound/vui/engine/DefaultANTHandlerContext;-><init>(Lcom/unisound/vui/engine/DefaultANTPipeline;Ljava/lang/String;Lcom/unisound/vui/engine/ANTHandler;)V

    invoke-direct {p0, p2, v0, v1}, Lcom/unisound/vui/engine/DefaultANTPipeline;->addBefore0(Ljava/lang/String;Lcom/unisound/vui/engine/AbstractANTHandlerContext;Lcom/unisound/vui/engine/AbstractANTHandlerContext;)V

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addFirst(Ljava/lang/String;Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/unisound/vui/engine/ANTHandler;

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/unisound/vui/engine/DefaultANTPipeline;->checkDuplicateName(Ljava/lang/String;)V

    new-instance v0, Lcom/unisound/vui/engine/DefaultANTHandlerContext;

    invoke-direct {v0, p0, p1, p2}, Lcom/unisound/vui/engine/DefaultANTHandlerContext;-><init>(Lcom/unisound/vui/engine/DefaultANTPipeline;Ljava/lang/String;Lcom/unisound/vui/engine/ANTHandler;)V

    invoke-direct {p0, p1, v0}, Lcom/unisound/vui/engine/DefaultANTPipeline;->addFirst0(Ljava/lang/String;Lcom/unisound/vui/engine/AbstractANTHandlerContext;)V

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public varargs addFirst([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;
    .locals 3
    .param p1, "handlers"    # [Lcom/unisound/vui/engine/ANTHandler;

    .prologue
    const-string v0, "handlers"

    invoke-static {p1, v0}, Lcom/unisound/vui/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    aget-object v0, p1, v0

    if-nez v0, :cond_1

    :cond_0
    return-object p0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    aget-object v1, p1, v0

    if-nez v1, :cond_3

    :cond_2
    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_0

    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Lcom/unisound/vui/engine/DefaultANTPipeline;->generateName(Lcom/unisound/vui/engine/ANTHandler;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/unisound/vui/engine/DefaultANTPipeline;->addFirst(Ljava/lang/String;Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public addLast(Ljava/lang/String;Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/unisound/vui/engine/ANTHandler;

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/unisound/vui/engine/DefaultANTPipeline;->checkDuplicateName(Ljava/lang/String;)V

    new-instance v0, Lcom/unisound/vui/engine/DefaultANTHandlerContext;

    invoke-direct {v0, p0, p1, p2}, Lcom/unisound/vui/engine/DefaultANTHandlerContext;-><init>(Lcom/unisound/vui/engine/DefaultANTPipeline;Ljava/lang/String;Lcom/unisound/vui/engine/ANTHandler;)V

    invoke-direct {p0, p1, v0}, Lcom/unisound/vui/engine/DefaultANTPipeline;->addLast0(Ljava/lang/String;Lcom/unisound/vui/engine/AbstractANTHandlerContext;)V

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public varargs addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;
    .locals 4
    .param p1, "handlers"    # [Lcom/unisound/vui/engine/ANTHandler;

    .prologue
    const-string v0, "handlers"

    invoke-static {p1, v0}, Lcom/unisound/vui/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    if-nez v2, :cond_1

    :cond_0
    return-object p0

    :cond_1
    invoke-direct {p0, v2}, Lcom/unisound/vui/engine/DefaultANTPipeline;->generateName(Lcom/unisound/vui/engine/ANTHandler;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/unisound/vui/engine/DefaultANTPipeline;->addLast(Ljava/lang/String;Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public cancelASR()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/engine/DefaultANTPipeline;->tail:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    invoke-virtual {v0}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->cancelASR()V

    return-void
.end method

.method public cancelTTS()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/engine/DefaultANTPipeline;->tail:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    invoke-virtual {v0}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->cancelTTS()V

    return-void
.end method

.method public clearPipeline()V
    .locals 2

    iget-object v0, p0, Lcom/unisound/vui/engine/DefaultANTPipeline;->tail:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    iget-object v0, v0, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->prev:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    :goto_0
    iget-object v1, p0, Lcom/unisound/vui/engine/DefaultANTPipeline;->head:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    if-eq v0, v1, :cond_0

    iget-object v0, v0, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->prev:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public context(Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTHandlerContext;
    .locals 2
    .param p1, "handler"    # Lcom/unisound/vui/engine/ANTHandler;

    .prologue
    const-string v0, "handler"

    invoke-static {p1, v0}, Lcom/unisound/vui/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/unisound/vui/engine/DefaultANTPipeline;->head:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    iget-object v0, v0, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->next:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->handler()Lcom/unisound/vui/engine/ANTHandler;

    move-result-object v1

    if-eq v1, p1, :cond_0

    iget-object v0, v0, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->next:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    goto :goto_0
.end method

.method public context(Ljava/lang/String;)Lcom/unisound/vui/engine/ANTHandlerContext;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/unisound/vui/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/unisound/vui/engine/DefaultANTPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/engine/ANTHandlerContext;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public doPPTAction()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/engine/DefaultANTPipeline;->tail:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    invoke-virtual {v0}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->doPPTAction()V

    return-void
.end method

.method public engine()Lcom/unisound/vui/engine/ANTEngine;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/engine/DefaultANTPipeline;->antEngine:Lcom/unisound/vui/engine/ANTEngine;

    return-object v0
.end method

.method public enterASR()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/engine/DefaultANTPipeline;->tail:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    invoke-virtual {v0}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->enterASR()V

    return-void
.end method

.method public enterWakeup(Z)V
    .locals 1
    .param p1, "playBeep"    # Z

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/engine/DefaultANTPipeline;->tail:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    invoke-virtual {v0, p1}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->enterWakeup(Z)V

    return-void
.end method

.method public fireASRError(ILjava/lang/String;)Lcom/unisound/vui/engine/ANTPipeline;
    .locals 1
    .param p1, "type"    # I
    .param p2, "error"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/engine/DefaultANTPipeline;->head:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    invoke-virtual {v0, p1, p2}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->fireASRError(ILjava/lang/String;)Lcom/unisound/vui/engine/ANTHandlerContext;

    return-object p0
.end method

.method public fireASREvent(I)Lcom/unisound/vui/engine/ANTPipeline;
    .locals 1
    .param p1, "type"    # I

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/engine/DefaultANTPipeline;->head:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    invoke-virtual {v0, p1}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->fireASREvent(I)Lcom/unisound/vui/engine/ANTHandlerContext;

    return-object p0
.end method

.method public fireASRResult(ILjava/lang/String;)Lcom/unisound/vui/engine/ANTPipeline;
    .locals 1
    .param p1, "type"    # I
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/engine/DefaultANTPipeline;->head:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    invoke-virtual {v0, p1, p2}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->fireASRResult(ILjava/lang/String;)Lcom/unisound/vui/engine/ANTHandlerContext;

    return-object p0
.end method

.method public fireNLUError(ILjava/lang/String;)Lcom/unisound/vui/engine/ANTPipeline;
    .locals 1
    .param p1, "type"    # I
    .param p2, "error"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/engine/DefaultANTPipeline;->head:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    invoke-virtual {v0, p1, p2}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->fireNLUError(ILjava/lang/String;)Lcom/unisound/vui/engine/ANTHandlerContext;

    return-object p0
.end method

.method public fireNLUEvent(I)Lcom/unisound/vui/engine/ANTPipeline;
    .locals 1
    .param p1, "type"    # I

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/engine/DefaultANTPipeline;->head:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    invoke-virtual {v0, p1}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->fireNLUEvent(I)Lcom/unisound/vui/engine/ANTHandlerContext;

    return-object p0
.end method

.method public fireNLUResult(ILjava/lang/String;)Lcom/unisound/vui/engine/ANTPipeline;
    .locals 1
    .param p1, "type"    # I
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/engine/DefaultANTPipeline;->head:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    invoke-virtual {v0, p1, p2}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->fireNLUResult(ILjava/lang/String;)Lcom/unisound/vui/engine/ANTHandlerContext;

    return-object p0
.end method

.method public fireTTSError(ILjava/lang/String;)Lcom/unisound/vui/engine/ANTPipeline;
    .locals 1
    .param p1, "type"    # I
    .param p2, "error"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/engine/DefaultANTPipeline;->head:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    invoke-virtual {v0, p1, p2}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->fireTTSError(ILjava/lang/String;)Lcom/unisound/vui/engine/ANTHandlerContext;

    return-object p0
.end method

.method public fireTTSEvent(I)Lcom/unisound/vui/engine/ANTPipeline;
    .locals 1
    .param p1, "type"    # I

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/engine/DefaultANTPipeline;->head:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    invoke-virtual {v0, p1}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->fireTTSEvent(I)Lcom/unisound/vui/engine/ANTHandlerContext;

    return-object p0
.end method

.method public fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;
    .locals 1
    .param p1, "event"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/engine/DefaultANTPipeline;->head:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    invoke-virtual {v0, p1}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTHandlerContext;

    return-object p0
.end method

.method public initializeMode()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/engine/DefaultANTPipeline;->tail:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    invoke-virtual {v0}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->initializeMode()V

    return-void
.end method

.method public initializeSdk()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/engine/DefaultANTPipeline;->tail:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    invoke-virtual {v0}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->initializeSdk()V

    return-void
.end method

.method public playTTS(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/engine/DefaultANTPipeline;->tail:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    invoke-virtual {v0, p1}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->playTTS(Ljava/lang/String;)V

    return-void
.end method

.method public remove(Ljava/lang/String;)Lcom/unisound/vui/engine/ANTHandler;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/unisound/vui/engine/DefaultANTPipeline;->getContextOrDie(Ljava/lang/String;)Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/vui/engine/DefaultANTPipeline;->remove(Lcom/unisound/vui/engine/AbstractANTHandlerContext;)Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->handler()Lcom/unisound/vui/engine/ANTHandler;

    move-result-object v0

    return-object v0
.end method

.method public remove(Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;
    .locals 1
    .param p1, "handler"    # Lcom/unisound/vui/engine/ANTHandler;

    .prologue
    invoke-direct {p0, p1}, Lcom/unisound/vui/engine/DefaultANTPipeline;->getContextOrDie(Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/vui/engine/DefaultANTPipeline;->remove(Lcom/unisound/vui/engine/AbstractANTHandlerContext;)Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    return-object p0
.end method

.method remove0(Lcom/unisound/vui/engine/AbstractANTHandlerContext;)V
    .locals 2
    .param p1, "ctx"    # Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    .prologue
    iget-object v0, p1, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->prev:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    iget-object v1, p1, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->next:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    iput-object v1, v0, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->next:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    iput-object v0, v1, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->prev:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    iget-object v0, p0, Lcom/unisound/vui/engine/DefaultANTPipeline;->name2ctx:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setWakeupWord(Ljava/util/List;Z)V
    .locals 1
    .param p2, "playBeep"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "wakeup":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/unisound/vui/engine/DefaultANTPipeline;->tail:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    invoke-virtual {v0, p1, p2}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->setWakeupWord(Ljava/util/List;Z)V

    return-void
.end method

.method public stopASR()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/engine/DefaultANTPipeline;->tail:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    invoke-virtual {v0}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->stopASR()V

    return-void
.end method

.method public stopWakeup()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/engine/DefaultANTPipeline;->tail:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    invoke-virtual {v0}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->stopWakeup()V

    return-void
.end method

.method public updateWakeupWord(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "wakeup":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/unisound/vui/engine/DefaultANTPipeline;->tail:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    invoke-virtual {v0, p1}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->updateWakeupWord(Ljava/util/List;)V

    return-void
.end method

.method public write(Ljava/lang/Object;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/engine/DefaultANTPipeline;->tail:Lcom/unisound/vui/engine/AbstractANTHandlerContext;

    invoke-virtual {v0, p1}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;->write(Ljava/lang/Object;)V

    return-void
.end method
