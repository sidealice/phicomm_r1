.class public Lcom/unisound/vui/data/d/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/unisound/vui/data/d/a;

.field private b:Lcom/unisound/vui/data/d/d;

.field private c:Lcom/unisound/vui/data/d/f;

.field private d:Lcom/unisound/vui/data/d/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/unisound/vui/data/d/a;

    invoke-direct {v0, p1}, Lcom/unisound/vui/data/d/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unisound/vui/data/d/b;->a:Lcom/unisound/vui/data/d/a;

    new-instance v0, Lcom/unisound/vui/data/d/d;

    invoke-direct {v0, p1}, Lcom/unisound/vui/data/d/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unisound/vui/data/d/b;->b:Lcom/unisound/vui/data/d/d;

    new-instance v0, Lcom/unisound/vui/data/d/f;

    invoke-direct {v0, p1}, Lcom/unisound/vui/data/d/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unisound/vui/data/d/b;->c:Lcom/unisound/vui/data/d/f;

    new-instance v0, Lcom/unisound/vui/data/d/e;

    invoke-direct {v0, p1}, Lcom/unisound/vui/data/d/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unisound/vui/data/d/b;->d:Lcom/unisound/vui/data/d/e;

    return-void
.end method


# virtual methods
.method public a()Lcom/unisound/vui/data/d/a;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/data/d/b;->a:Lcom/unisound/vui/data/d/a;

    return-object v0
.end method

.method public b()Lcom/unisound/vui/data/d/d;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/data/d/b;->b:Lcom/unisound/vui/data/d/d;

    return-object v0
.end method

.method public c()Lcom/unisound/vui/data/d/f;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/data/d/b;->c:Lcom/unisound/vui/data/d/f;

    return-object v0
.end method
