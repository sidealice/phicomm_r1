.class final synthetic Lcom/phicomm/speaker/views/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/phicomm/speaker/views/LoadingDialog;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/views/LoadingDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/views/l;->a:Lcom/phicomm/speaker/views/LoadingDialog;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/phicomm/speaker/views/l;->a:Lcom/phicomm/speaker/views/LoadingDialog;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/LoadingDialog;->a()V

    return-void
.end method
