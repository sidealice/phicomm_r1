.class final Lcom/unisound/vui/util/d$a;
.super Ljava/util/concurrent/atomic/AtomicReference;

# interfaces
.implements Lcom/unisound/vui/util/Attribute;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/vui/util/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<TT;>;",
        "Lcom/unisound/vui/util/Attribute",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/unisound/vui/util/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/unisound/vui/util/d$a",
            "<*>;"
        }
    .end annotation
.end field

.field private final b:Lcom/unisound/vui/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/unisound/vui/util/AttributeKey",
            "<TT;>;"
        }
    .end annotation
.end field

.field private c:Lcom/unisound/vui/util/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/unisound/vui/util/d$a",
            "<*>;"
        }
    .end annotation
.end field

.field private d:Lcom/unisound/vui/util/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/unisound/vui/util/d$a",
            "<*>;"
        }
    .end annotation
.end field

.field private volatile e:Z


# direct methods
.method constructor <init>(Lcom/unisound/vui/util/AttributeKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unisound/vui/util/AttributeKey",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p0, p0, Lcom/unisound/vui/util/d$a;->a:Lcom/unisound/vui/util/d$a;

    iput-object p1, p0, Lcom/unisound/vui/util/d$a;->b:Lcom/unisound/vui/util/AttributeKey;

    return-void
.end method

.method constructor <init>(Lcom/unisound/vui/util/d$a;Lcom/unisound/vui/util/AttributeKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unisound/vui/util/d$a",
            "<*>;",
            "Lcom/unisound/vui/util/AttributeKey",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/unisound/vui/util/d$a;->a:Lcom/unisound/vui/util/d$a;

    iput-object p2, p0, Lcom/unisound/vui/util/d$a;->b:Lcom/unisound/vui/util/AttributeKey;

    return-void
.end method

.method static synthetic a(Lcom/unisound/vui/util/d$a;Lcom/unisound/vui/util/d$a;)Lcom/unisound/vui/util/d$a;
    .locals 0

    iput-object p1, p0, Lcom/unisound/vui/util/d$a;->d:Lcom/unisound/vui/util/d$a;

    return-object p1
.end method

.method private a()V
    .locals 3

    iget-object v1, p0, Lcom/unisound/vui/util/d$a;->a:Lcom/unisound/vui/util/d$a;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/unisound/vui/util/d$a;->c:Lcom/unisound/vui/util/d$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/util/d$a;->c:Lcom/unisound/vui/util/d$a;

    iget-object v2, p0, Lcom/unisound/vui/util/d$a;->d:Lcom/unisound/vui/util/d$a;

    iput-object v2, v0, Lcom/unisound/vui/util/d$a;->d:Lcom/unisound/vui/util/d$a;

    iget-object v0, p0, Lcom/unisound/vui/util/d$a;->d:Lcom/unisound/vui/util/d$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/util/d$a;->d:Lcom/unisound/vui/util/d$a;

    iget-object v2, p0, Lcom/unisound/vui/util/d$a;->c:Lcom/unisound/vui/util/d$a;

    iput-object v2, v0, Lcom/unisound/vui/util/d$a;->c:Lcom/unisound/vui/util/d$a;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/unisound/vui/util/d$a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/vui/util/d$a;->e:Z

    return v0
.end method

.method static synthetic b(Lcom/unisound/vui/util/d$a;)Lcom/unisound/vui/util/AttributeKey;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/util/d$a;->b:Lcom/unisound/vui/util/AttributeKey;

    return-object v0
.end method

.method static synthetic b(Lcom/unisound/vui/util/d$a;Lcom/unisound/vui/util/d$a;)Lcom/unisound/vui/util/d$a;
    .locals 0

    iput-object p1, p0, Lcom/unisound/vui/util/d$a;->c:Lcom/unisound/vui/util/d$a;

    return-object p1
.end method

.method static synthetic c(Lcom/unisound/vui/util/d$a;)Lcom/unisound/vui/util/d$a;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/util/d$a;->d:Lcom/unisound/vui/util/d$a;

    return-object v0
.end method


# virtual methods
.method public getAndRemove()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/vui/util/d$a;->e:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/unisound/vui/util/d$a;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0}, Lcom/unisound/vui/util/d$a;->a()V

    return-object v0
.end method

.method public key()Lcom/unisound/vui/util/AttributeKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/unisound/vui/util/AttributeKey",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/unisound/vui/util/d$a;->b:Lcom/unisound/vui/util/AttributeKey;

    return-object v0
.end method

.method public remove()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/vui/util/d$a;->e:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/unisound/vui/util/d$a;->set(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/unisound/vui/util/d$a;->a()V

    return-void
.end method

.method public setIfAbsent(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/unisound/vui/util/d$a;, "Lcom/unisound/vui/util/d$a<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/unisound/vui/util/d$a;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/unisound/vui/util/d$a;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
