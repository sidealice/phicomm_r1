.class final Lcom/phicomm/speaker/f/h$1;
.super Ljava/lang/Object;
.source "EditTextUtils.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/f/h;->a(ILjava/lang/String;)Landroid/text/InputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 91
    iput p1, p0, Lcom/phicomm/speaker/f/h$1;->a:I

    iput-object p2, p0, Lcom/phicomm/speaker/f/h$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 1

    const/4 p2, 0x0

    move p3, p2

    move p5, p3

    .line 108
    :goto_0
    iget p6, p0, Lcom/phicomm/speaker/f/h$1;->a:I

    const/16 v0, 0x80

    if-gt p3, p6, :cond_1

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result p6

    if-ge p5, p6, :cond_1

    add-int/lit8 p6, p5, 0x1

    .line 109
    invoke-interface {p4, p5}, Landroid/text/Spanned;->charAt(I)C

    move-result p5

    if-ge p5, v0, :cond_0

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p3, p3, 0x2

    :goto_1
    move p5, p6

    goto :goto_0

    .line 117
    :cond_1
    iget p6, p0, Lcom/phicomm/speaker/f/h$1;->a:I

    if-le p3, p6, :cond_2

    add-int/lit8 p5, p5, -0x1

    .line 118
    invoke-interface {p4, p2, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_2
    move p4, p2

    .line 122
    :goto_2
    iget p5, p0, Lcom/phicomm/speaker/f/h$1;->a:I

    if-gt p3, p5, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p5

    if-ge p4, p5, :cond_4

    add-int/lit8 p5, p4, 0x1

    .line 123
    invoke-interface {p1, p4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p4

    if-ge p4, v0, :cond_3

    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 p3, p3, 0x2

    :goto_3
    move p4, p5

    goto :goto_2

    .line 131
    :cond_4
    iget p5, p0, Lcom/phicomm/speaker/f/h$1;->a:I

    if-le p3, p5, :cond_6

    .line 132
    iget-object p3, p0, Lcom/phicomm/speaker/f/h$1;->b:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_5

    .line 133
    iget-object p3, p0, Lcom/phicomm/speaker/f/h$1;->b:Ljava/lang/String;

    invoke-static {p3}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    :cond_5
    add-int/lit8 p4, p4, -0x1

    .line 138
    :cond_6
    invoke-interface {p1, p2, p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
