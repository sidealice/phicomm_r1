.class public Lcom/unisound/vui/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/unisound/client/TextUnderstanderListener;

.field private b:Lcom/unisound/client/TextUnderstander;

.field private c:Lcom/unisound/vui/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/unisound/vui/e$1;

    invoke-direct {v0, p0}, Lcom/unisound/vui/e$1;-><init>(Lcom/unisound/vui/e;)V

    iput-object v0, p0, Lcom/unisound/vui/e;->a:Lcom/unisound/client/TextUnderstanderListener;

    new-instance v0, Lcom/unisound/client/TextUnderstander;

    invoke-direct {v0, p1, p2, p3}, Lcom/unisound/client/TextUnderstander;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unisound/vui/e;->b:Lcom/unisound/client/TextUnderstander;

    iget-object v0, p0, Lcom/unisound/vui/e;->b:Lcom/unisound/client/TextUnderstander;

    iget-object v1, p0, Lcom/unisound/vui/e;->a:Lcom/unisound/client/TextUnderstanderListener;

    invoke-virtual {v0, v1}, Lcom/unisound/client/TextUnderstander;->setListener(Lcom/unisound/client/TextUnderstanderListener;)V

    return-void
.end method

.method static synthetic a(Lcom/unisound/vui/e;)Lcom/unisound/vui/f;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/e;->c:Lcom/unisound/vui/f;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/e;->b:Lcom/unisound/client/TextUnderstander;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/unisound/vui/e;->b:Lcom/unisound/client/TextUnderstander;

    invoke-virtual {v0, p1}, Lcom/unisound/client/TextUnderstander;->init(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public a(ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/e;->b:Lcom/unisound/client/TextUnderstander;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/unisound/vui/e;->b:Lcom/unisound/client/TextUnderstander;

    invoke-virtual {v0, p1, p2}, Lcom/unisound/client/TextUnderstander;->setOption(ILjava/lang/Object;)V

    goto :goto_0
.end method
