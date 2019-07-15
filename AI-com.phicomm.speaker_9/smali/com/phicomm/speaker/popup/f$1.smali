.class Lcom/phicomm/speaker/popup/f$1;
.super Ljava/lang/Object;
.source "FeedBackPopup.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/popup/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/popup/f;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/popup/f;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/phicomm/speaker/popup/f$1;->a:Lcom/phicomm/speaker/popup/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2

    const-string p1, "FeedBackPopup"

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onCheckedChanged checkedId  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/phicomm/speaker/f/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object p1, p0, Lcom/phicomm/speaker/popup/f$1;->a:Lcom/phicomm/speaker/popup/f;

    invoke-static {p1}, Lcom/phicomm/speaker/popup/f;->a(Lcom/phicomm/speaker/popup/f;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 81
    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v1

    if-ne p2, v1, :cond_0

    .line 82
    invoke-virtual {v0}, Landroid/widget/RadioButton;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "FeedBackPopup"

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onCheckedChanged seq  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/phicomm/speaker/f/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object p2, p0, Lcom/phicomm/speaker/popup/f$1;->a:Lcom/phicomm/speaker/popup/f;

    invoke-static {p2}, Lcom/phicomm/speaker/popup/f;->b(Lcom/phicomm/speaker/popup/f;)Lcom/phicomm/speaker/popup/f$a;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 85
    iget-object p2, p0, Lcom/phicomm/speaker/popup/f$1;->a:Lcom/phicomm/speaker/popup/f;

    invoke-static {p2}, Lcom/phicomm/speaker/popup/f;->b(Lcom/phicomm/speaker/popup/f;)Lcom/phicomm/speaker/popup/f$a;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/phicomm/speaker/popup/f$a;->a(I)V

    .line 87
    :cond_1
    iget-object p1, p0, Lcom/phicomm/speaker/popup/f$1;->a:Lcom/phicomm/speaker/popup/f;

    invoke-virtual {p1}, Lcom/phicomm/speaker/popup/f;->a()V

    return-void

    :cond_2
    return-void
.end method
