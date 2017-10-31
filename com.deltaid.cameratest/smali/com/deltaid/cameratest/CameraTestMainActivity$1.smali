.class Lcom/deltaid/cameratest/CameraTestMainActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deltaid/cameratest/CameraTestMainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deltaid/cameratest/CameraTestMainActivity;


# direct methods
.method constructor <init>(Lcom/deltaid/cameratest/CameraTestMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$1;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$1;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    iget-boolean v0, v0, Lcom/deltaid/cameratest/CameraTestMainActivity;->I:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$1;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/deltaid/cameratest/CameraTestMainActivity;->I:Z

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$1;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    invoke-virtual {v0}, Lcom/deltaid/cameratest/CameraTestMainActivity;->b()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$1;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/deltaid/cameratest/CameraTestMainActivity;->I:Z

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$1;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    invoke-virtual {v0}, Lcom/deltaid/cameratest/CameraTestMainActivity;->a()V

    goto :goto_0
.end method
