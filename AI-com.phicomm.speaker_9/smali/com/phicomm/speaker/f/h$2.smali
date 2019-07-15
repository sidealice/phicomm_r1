.class final Lcom/phicomm/speaker/f/h$2;
.super Ljava/lang/Object;
.source "EditTextUtils.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/f/h;->a(ZZ)Landroid/text/InputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z


# direct methods
.method constructor <init>(ZZ)V
    .locals 0

    .line 148
    iput-boolean p1, p0, Lcom/phicomm/speaker/f/h$2;->a:Z

    iput-boolean p2, p0, Lcom/phicomm/speaker/f/h$2;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    .line 151
    iget-boolean p2, p0, Lcom/phicomm/speaker/f/h$2;->a:Z

    if-nez p2, :cond_0

    const-string p2, " "

    .line 152
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p1, ""

    return-object p1

    .line 156
    :cond_0
    iget-boolean p2, p0, Lcom/phicomm/speaker/f/h$2;->b:Z

    if-nez p2, :cond_1

    .line 157
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/phicomm/speaker/f/h;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, ""

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
