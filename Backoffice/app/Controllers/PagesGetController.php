<?php
namespace App\Controllers;

use App\Controllers\Auth\AuthController;
use App\Models\Ecran;
use App\Models\Sequence;
use Slim\Http\Request;
use Slim\Http\Response;

class PagesGetController extends Controller {

    public function home(Request $request, Response $response) {
        $this->render($response, 'Pages/Home.twig');
    }

    public function login(Request $request, Response $response) {
        $this->render($response, 'Pages/Login.twig');
    }

    public function logout(Request $request, Response $response) {
        AuthController::logout();
        return $this->redirect($response, 'login');
    }

    public function createSequence(Request $request, Response $response) {
        $this->render($response, 'Pages/CreateSequence.twig');
    }

    public function createScreen(Request $request, Response $response, $args) {
        $id = $args['id'];
        $sequence = Sequence::where('id', $id)->first();
        if(is_null($sequence)) {
            return $this->redirect($response, 'sequences');
        } else {
            $this->render($response, 'Pages/CreateScreen.twig', ['sequence' => $sequence, 'id' => $id]);
        }
    }

    public function Sequences(Request $request, Response $response) {
        $sequences = Sequence::select()->with('ecran')->get();
        $this->render($response, 'Pages/Sequences.twig', ['sequences' => $sequences]);
    }

    public function Screens(Request $request, Response $response, $args) {
        $id = $args['id'];
        $screens = Ecran::where('id_sequence', $id)->with('sequence')->get();
        $sequence = Sequence::where('id', $id)->first();

        if(is_null($sequence)) {
            return $this->redirect($response, 'sequences');
        } else {
            $this->render($response, 'Pages/Screens.twig', ['screens' => $screens, 'sequence' => $sequence, 'id' => $id]);
        }
    }

}