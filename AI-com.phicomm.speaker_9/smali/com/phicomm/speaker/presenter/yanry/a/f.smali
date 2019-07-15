.class final synthetic Lcom/phicomm/speaker/presenter/yanry/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/phicomm/speaker/presenter/yanry/a/e;

.field private final b:Lcom/unisound/lib/time/bean/NoteInfo;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/yanry/a/e;Lcom/unisound/lib/time/bean/NoteInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/f;->a:Lcom/phicomm/speaker/presenter/yanry/a/e;

    iput-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/a/f;->b:Lcom/unisound/lib/time/bean/NoteInfo;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/f;->a:Lcom/phicomm/speaker/presenter/yanry/a/e;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/a/f;->b:Lcom/unisound/lib/time/bean/NoteInfo;

    invoke-virtual {v0, v1, p1}, Lcom/phicomm/speaker/presenter/yanry/a/e;->a(Lcom/unisound/lib/time/bean/NoteInfo;Landroid/view/View;)V

    return-void
.end method
