.class Lcom/phicomm/speaker/presenter/yanry/a/e$5;
.super Lcom/phicomm/speaker/e/c/b;
.source "MemoPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/yanry/a/e;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/e/c/b<",
        "Lcom/unisound/lib/time/bean/NoteInfoBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/presenter/yanry/a/e;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/yanry/a/e;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/e$5;->a:Lcom/phicomm/speaker/presenter/yanry/a/e;

    invoke-direct {p0}, Lcom/phicomm/speaker/e/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 0

    return-void
.end method

.method protected a(ILcom/unisound/lib/time/bean/NoteInfoBean;)V
    .locals 1

    .line 240
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/e$5;->a:Lcom/phicomm/speaker/presenter/yanry/a/e;

    const/4 v0, 0x1

    invoke-static {p1, v0, p2}, Lcom/phicomm/speaker/presenter/yanry/a/e;->a(Lcom/phicomm/speaker/presenter/yanry/a/e;ZLcom/unisound/lib/time/bean/NoteInfoBean;)V

    return-void
.end method

.method protected bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    .line 236
    check-cast p2, Lcom/unisound/lib/time/bean/NoteInfoBean;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/presenter/yanry/a/e$5;->a(ILcom/unisound/lib/time/bean/NoteInfoBean;)V

    return-void
.end method
