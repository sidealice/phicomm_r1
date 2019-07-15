.class public Lcom/unisound/client/TextUnderstander;
.super Lcom/unisound/sdk/cb;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/unisound/sdk/cb;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    invoke-super {p0}, Lcom/unisound/sdk/cb;->cancel()V

    return-void
.end method

.method public getOption(I)Ljava/lang/Object;
    .locals 1

    invoke-super {p0, p1}, Lcom/unisound/sdk/cb;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public init(Ljava/lang/String;)I
    .locals 1

    invoke-super {p0, p1}, Lcom/unisound/sdk/cb;->init(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setListener(Lcom/unisound/client/TextUnderstanderListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/unisound/sdk/cb;->setListener(Lcom/unisound/client/TextUnderstanderListener;)V

    return-void
.end method

.method public setOption(ILjava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/unisound/sdk/cb;->setOption(ILjava/lang/Object;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/unisound/sdk/cb;->setText(Ljava/lang/String;)V

    return-void
.end method
