.class public Lcom/unisound/sdk/cf;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/unisound/sdk/cg;

.field b:Lcom/unisound/sdk/ch;

.field private c:[Ljava/lang/Object;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/unisound/sdk/cg;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/sdk/cf;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/cf;->b:Lcom/unisound/sdk/ch;

    iput-object p1, p0, Lcom/unisound/sdk/cf;->a:Lcom/unisound/sdk/cg;

    return-void
.end method

.method static synthetic a(Lcom/unisound/sdk/cf;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/unisound/sdk/cf;->d:Z

    return p1
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-virtual {p0}, Lcom/unisound/sdk/cf;->b()V

    new-instance v0, Lcom/unisound/sdk/ch;

    iget-object v1, p0, Lcom/unisound/sdk/cf;->a:Lcom/unisound/sdk/cg;

    invoke-direct {v0, p0, v1}, Lcom/unisound/sdk/ch;-><init>(Lcom/unisound/sdk/cf;Lcom/unisound/sdk/cg;)V

    iput-object v0, p0, Lcom/unisound/sdk/cf;->b:Lcom/unisound/sdk/ch;

    iget-object v0, p0, Lcom/unisound/sdk/cf;->c:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/cf;->b:Lcom/unisound/sdk/ch;

    iget-object v1, p0, Lcom/unisound/sdk/cf;->c:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/ch;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public varargs a([Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/cf;->c:[Ljava/lang/Object;

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/cf;->b:Lcom/unisound/sdk/ch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/cf;->b:Lcom/unisound/sdk/ch;

    invoke-virtual {v0}, Lcom/unisound/sdk/ch;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/cf;->b:Lcom/unisound/sdk/ch;

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/cf;->d:Z

    return v0
.end method
