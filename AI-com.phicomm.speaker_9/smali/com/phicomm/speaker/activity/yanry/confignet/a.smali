.class final synthetic Lcom/phicomm/speaker/activity/yanry/confignet/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/activity/yanry/confignet/a;->a:Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/a;->a:Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;

    invoke-virtual {v0}, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->f()V

    return-void
.end method
