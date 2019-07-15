.class Lcom/phicomm/speaker/views/widget/CustomEditText$1;
.super Ljava/lang/Object;
.source "CustomEditText.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/views/widget/CustomEditText;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/views/widget/CustomEditText;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/views/widget/CustomEditText;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/phicomm/speaker/views/widget/CustomEditText$1;->a:Lcom/phicomm/speaker/views/widget/CustomEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 3

    const/4 p2, 0x0

    if-eq p5, p6, :cond_2

    .line 126
    invoke-interface {p4, p5, p6}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    .line 127
    iget-object v0, p0, Lcom/phicomm/speaker/views/widget/CustomEditText$1;->a:Lcom/phicomm/speaker/views/widget/CustomEditText;

    invoke-static {v0}, Lcom/phicomm/speaker/views/widget/CustomEditText;->a(Lcom/phicomm/speaker/views/widget/CustomEditText;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    move v0, p5

    :goto_0
    if-ge v0, p6, :cond_1

    .line 129
    iget-object v1, p0, Lcom/phicomm/speaker/views/widget/CustomEditText$1;->a:Lcom/phicomm/speaker/views/widget/CustomEditText;

    invoke-static {v1, v0}, Lcom/phicomm/speaker/views/widget/CustomEditText;->a(Lcom/phicomm/speaker/views/widget/CustomEditText;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/phicomm/speaker/views/widget/CustomEditText$1;->a:Lcom/phicomm/speaker/views/widget/CustomEditText;

    invoke-static {v1}, Lcom/phicomm/speaker/views/widget/CustomEditText;->a(Lcom/phicomm/speaker/views/widget/CustomEditText;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-int v2, v0, p5

    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_1
    iget-object p3, p0, Lcom/phicomm/speaker/views/widget/CustomEditText$1;->a:Lcom/phicomm/speaker/views/widget/CustomEditText;

    iget-object p6, p0, Lcom/phicomm/speaker/views/widget/CustomEditText$1;->a:Lcom/phicomm/speaker/views/widget/CustomEditText;

    invoke-static {p6}, Lcom/phicomm/speaker/views/widget/CustomEditText;->b(Lcom/phicomm/speaker/views/widget/CustomEditText;)Ljava/util/List;

    move-result-object p6

    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result p6

    add-int/lit8 p6, p6, -0x1

    iget-object v0, p0, Lcom/phicomm/speaker/views/widget/CustomEditText$1;->a:Lcom/phicomm/speaker/views/widget/CustomEditText;

    invoke-static {v0}, Lcom/phicomm/speaker/views/widget/CustomEditText;->b(Lcom/phicomm/speaker/views/widget/CustomEditText;)Ljava/util/List;

    move-result-object v0

    invoke-static {p3, p5, p2, p6, v0}, Lcom/phicomm/speaker/views/widget/CustomEditText;->a(Lcom/phicomm/speaker/views/widget/CustomEditText;IIILjava/util/List;)I

    move-result p3

    sub-int p3, p5, p3

    .line 134
    iget-object p6, p0, Lcom/phicomm/speaker/views/widget/CustomEditText$1;->a:Lcom/phicomm/speaker/views/widget/CustomEditText;

    invoke-static {p6}, Lcom/phicomm/speaker/views/widget/CustomEditText;->c(Lcom/phicomm/speaker/views/widget/CustomEditText;)Ljava/lang/StringBuilder;

    move-result-object p6

    iget-object v0, p0, Lcom/phicomm/speaker/views/widget/CustomEditText$1;->a:Lcom/phicomm/speaker/views/widget/CustomEditText;

    invoke-static {v0}, Lcom/phicomm/speaker/views/widget/CustomEditText;->a(Lcom/phicomm/speaker/views/widget/CustomEditText;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/2addr v0, p3

    const-string v1, ""

    invoke-virtual {p6, p3, v0, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget-object p6, p0, Lcom/phicomm/speaker/views/widget/CustomEditText$1;->a:Lcom/phicomm/speaker/views/widget/CustomEditText;

    invoke-static {p6, p3}, Lcom/phicomm/speaker/views/widget/CustomEditText;->b(Lcom/phicomm/speaker/views/widget/CustomEditText;I)I

    .line 137
    :cond_2
    iget-object p3, p0, Lcom/phicomm/speaker/views/widget/CustomEditText$1;->a:Lcom/phicomm/speaker/views/widget/CustomEditText;

    invoke-static {p3}, Lcom/phicomm/speaker/views/widget/CustomEditText;->d(Lcom/phicomm/speaker/views/widget/CustomEditText;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 138
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/phicomm/speaker/views/widget/CustomEditText$1;->a:Lcom/phicomm/speaker/views/widget/CustomEditText;

    invoke-static {p3}, Lcom/phicomm/speaker/views/widget/CustomEditText;->c(Lcom/phicomm/speaker/views/widget/CustomEditText;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    if-nez p3, :cond_4

    .line 139
    :cond_3
    iget-object p3, p0, Lcom/phicomm/speaker/views/widget/CustomEditText$1;->a:Lcom/phicomm/speaker/views/widget/CustomEditText;

    invoke-static {p3}, Lcom/phicomm/speaker/views/widget/CustomEditText;->d(Lcom/phicomm/speaker/views/widget/CustomEditText;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 141
    :cond_4
    iget-object p1, p0, Lcom/phicomm/speaker/views/widget/CustomEditText$1;->a:Lcom/phicomm/speaker/views/widget/CustomEditText;

    invoke-static {p1}, Lcom/phicomm/speaker/views/widget/CustomEditText;->d(Lcom/phicomm/speaker/views/widget/CustomEditText;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_5

    .line 142
    iget-object p1, p0, Lcom/phicomm/speaker/views/widget/CustomEditText$1;->a:Lcom/phicomm/speaker/views/widget/CustomEditText;

    iget-object p3, p0, Lcom/phicomm/speaker/views/widget/CustomEditText$1;->a:Lcom/phicomm/speaker/views/widget/CustomEditText;

    iget-object p4, p0, Lcom/phicomm/speaker/views/widget/CustomEditText$1;->a:Lcom/phicomm/speaker/views/widget/CustomEditText;

    invoke-static {p4}, Lcom/phicomm/speaker/views/widget/CustomEditText;->b(Lcom/phicomm/speaker/views/widget/CustomEditText;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    iget-object p6, p0, Lcom/phicomm/speaker/views/widget/CustomEditText$1;->a:Lcom/phicomm/speaker/views/widget/CustomEditText;

    invoke-static {p6}, Lcom/phicomm/speaker/views/widget/CustomEditText;->b(Lcom/phicomm/speaker/views/widget/CustomEditText;)Ljava/util/List;

    move-result-object p6

    invoke-static {p3, p5, p2, p4, p6}, Lcom/phicomm/speaker/views/widget/CustomEditText;->a(Lcom/phicomm/speaker/views/widget/CustomEditText;IIILjava/util/List;)I

    move-result p2

    sub-int/2addr p5, p2

    invoke-static {p1, p5}, Lcom/phicomm/speaker/views/widget/CustomEditText;->b(Lcom/phicomm/speaker/views/widget/CustomEditText;I)I

    .line 143
    iget-object p1, p0, Lcom/phicomm/speaker/views/widget/CustomEditText$1;->a:Lcom/phicomm/speaker/views/widget/CustomEditText;

    invoke-static {p1}, Lcom/phicomm/speaker/views/widget/CustomEditText;->c(Lcom/phicomm/speaker/views/widget/CustomEditText;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/phicomm/speaker/views/widget/CustomEditText$1;->a:Lcom/phicomm/speaker/views/widget/CustomEditText;

    invoke-static {p2}, Lcom/phicomm/speaker/views/widget/CustomEditText;->e(Lcom/phicomm/speaker/views/widget/CustomEditText;)I

    move-result p2

    iget-object p3, p0, Lcom/phicomm/speaker/views/widget/CustomEditText$1;->a:Lcom/phicomm/speaker/views/widget/CustomEditText;

    invoke-static {p3}, Lcom/phicomm/speaker/views/widget/CustomEditText;->d(Lcom/phicomm/speaker/views/widget/CustomEditText;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 144
    iget-object p1, p0, Lcom/phicomm/speaker/views/widget/CustomEditText$1;->a:Lcom/phicomm/speaker/views/widget/CustomEditText;

    iget-object p2, p0, Lcom/phicomm/speaker/views/widget/CustomEditText$1;->a:Lcom/phicomm/speaker/views/widget/CustomEditText;

    invoke-static {p2}, Lcom/phicomm/speaker/views/widget/CustomEditText;->e(Lcom/phicomm/speaker/views/widget/CustomEditText;)I

    move-result p2

    iget-object p3, p0, Lcom/phicomm/speaker/views/widget/CustomEditText$1;->a:Lcom/phicomm/speaker/views/widget/CustomEditText;

    invoke-static {p3}, Lcom/phicomm/speaker/views/widget/CustomEditText;->d(Lcom/phicomm/speaker/views/widget/CustomEditText;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    add-int/2addr p2, p3

    invoke-static {p1, p2}, Lcom/phicomm/speaker/views/widget/CustomEditText;->b(Lcom/phicomm/speaker/views/widget/CustomEditText;I)I

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method
