.class final synthetic Lcom/phicomm/speaker/presenter/yanry/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/phicomm/speaker/presenter/yanry/j$3;

.field private final b:Lcom/phicomm/speaker/views/widget/RequestLayout;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/yanry/j$3;Lcom/phicomm/speaker/views/widget/RequestLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/l;->a:Lcom/phicomm/speaker/presenter/yanry/j$3;

    iput-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/l;->b:Lcom/phicomm/speaker/views/widget/RequestLayout;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/l;->a:Lcom/phicomm/speaker/presenter/yanry/j$3;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/l;->b:Lcom/phicomm/speaker/views/widget/RequestLayout;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/presenter/yanry/j$3;->b(Lcom/phicomm/speaker/views/widget/RequestLayout;)V

    return-void
.end method
